import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/feature/kancolle/sea_force_base.dart';
import 'package:conning_tower/models/feature/log/kancolle_log.dart';
import 'package:conning_tower/objectbox.g.dart';
import 'package:conning_tower/pages/log_pages/log_item.dart';
import 'package:conning_tower/pages/log_viewer.dart';
import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pull_down_button/pull_down_button.dart';

import '../../providers/kancolle_data_provider.dart';
import '../../widgets/scroll_view.dart';

final progressProvider = StateProvider<double>((ref) => 0.0);

class ResourceLogDataPage extends ConsumerStatefulWidget {
  const ResourceLogDataPage({super.key});

  @override
  ConsumerState createState() => _ResourceLogDataPageState();
}

class _ResourceLogDataPageState extends ConsumerState<ResourceLogDataPage> {
  int queryLimit = 20;
  Map<DateTime, SeaForceBaseResource> _dataMap = {};

  Future<void> _pickFileAndLoad() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null) return;

    final filePath = result.files.first.path!;

    if (!filePath.endsWith(".csv")) return;

    final input = File(filePath).openRead();
    final fields = await input
        .transform(utf8.decoder)
        .transform(const CsvToListConverter(eol: '\n'))
        .toList();

    Map<DateTime, SeaForceBaseResource> dataMap = {};

    for (final line in fields.sublist(1)) {
      final date = DateFormat("yyyy/MM/dd HH:mm:ss").parse(line[0]);
      final resource = SeaForceBaseResource(
        fuel: line[1],
        ammo: line[2],
        steel: line[3],
        bauxite: line[4],
        instantCreateShip: line[5],
        instantRepairs: line[6],
        developmentMaterials: line[7],
        improvementMaterials: line[8],
      );

      dataMap[date] = resource;
    }
    setState(() {
      _dataMap = dataMap;
    });
  }

  @override
  Widget build(BuildContext context) {
    final kancolleData = ref.watch(kancolleDataProvider);

    ScrollController scrollController = ScrollController();

    Box<KancolleResourceLogEntity> dataBox = objectbox.resourceLog;

    Query<KancolleResourceLogEntity> query = dataBox
        .query()
        .order(KancolleResourceLogEntity_.time, flags: Order.descending)
        .build();
    query
      ..offset = 0
      ..limit = queryLimit;

    List<KancolleResourceLogEntity> data = query.find();

    debugPrint("num:${data.length}");

    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        bool isTop = scrollController.position.pixels == 0;
        if (isTop) {
          debugPrint('At the top');
        } else {
          setState(() {
            queryLimit += queryLimit;
            data = query.find();
          });
          debugPrint('At the bottom');
        }
      }
    });

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text(S.of(context).KCResources),
        previousPageTitle: S.of(context).KanColleLogbook,
        trailing: PullDownButton(
          useRootNavigator: true,
          itemBuilder: (BuildContext context) => [
            PullDownMenuItem(
              title: S.of(context).TextImportResourceFromPoi,
              subtitle: "poi.moe",
              onTap: () async {
                print(kancolleData.seaForceBase.admiral.name);
                if (kancolleData.seaForceBase.admiral.name == '') return;
                await _pickFileAndLoad();

                if (_dataMap.isNotEmpty &&
                    kancolleData.seaForceBase.admiral.name != "") {
                  if (!mounted) return;
                  showCupertinoModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return ImportResourcePage(
                            dataMap: _dataMap,
                            admiralName:
                                kancolleData.seaForceBase.admiral.name);
                      });
                }
              },
            ),
          ],
          buttonBuilder: (context, showMenu) => CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: showMenu,
            child: const Icon(CupertinoIcons.square_arrow_down),
          ),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: ScrollViewWithCupertinoScrollbar(
          controller: scrollController,
          children: [
            CupertinoListSection.insetGrouped(
              children: List.generate(
                data.length,
                (index) {
                  final title = resourceNameMap[data[index].resource] ?? '';
                  return LogItem(
                    log: null,
                    logType: LogType.resource,
                    title: Text(title),
                    subtitle: Text(
                        '${data[index].admiral} ${DateFormat.yMMMd().format(data[index].time)}'),
                    additionalInfo: Text(data[index].close.toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImportResourcePage extends StatefulWidget {
  const ImportResourcePage(
      {super.key, required this.dataMap, required this.admiralName});

  final Map<DateTime, SeaForceBaseResource> dataMap;
  final String admiralName;

  @override
  State<ImportResourcePage> createState() => _ImportResourcePageState();
}

class _ImportResourcePageState extends State<ImportResourcePage> {
  double progress = 0.0;
  StreamSubscription<double>? _subscription;

  Stream<double> _importData() async* {
    final totalItems = widget.dataMap.length;
    final name = widget.admiralName;

    for (var i = 0; i < totalItems; i++) {
      final element = widget.dataMap.entries.elementAt(i);
      final time = element.key;
      final item = element.value;

      await Future.delayed(const Duration(microseconds: 10)); // make latency

      objectbox.saveResource(time, name, "fuel", item.fuel);
      objectbox.saveResource(time, name, "ammo", item.ammo);
      objectbox.saveResource(time, name, "steel", item.steel);
      objectbox.saveResource(time, name, "bauxite", item.bauxite);
      objectbox.saveResource(time, name, "ic", item.instantCreateShip);
      objectbox.saveResource(time, name, "ir", item.instantRepairs);
      objectbox.saveResource(time, name, "dm", item.developmentMaterials);
      objectbox.saveResource(time, name, "im", item.improvementMaterials);

      // update progress
      yield (i + 1) / totalItems;
    }
  }

  void _startImport() {
    _subscription = _importData().listen((newProgress) {
      setState(() {
        progress = newProgress;
      });
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            progress > 0
                ? progress < 1
                    ? const CupertinoActivityIndicator()
                    : Text(
                        S.of(context).TextImportingComplete,
                        style: CupertinoTheme.of(context).textTheme.textStyle,
                      )
                : Text(S.of(context).TextImportResourceWarning,
                    style: CupertinoTheme.of(context).textTheme.textStyle),
            progress > 0
                ? Text(
                    "${(progress * 100).toStringAsFixed(0)}%",
                    style: CupertinoTheme.of(context).textTheme.textStyle,
                  )
                : Text(
                    S
                        .of(context)
                        .TextImportResourceNumberCheck(widget.dataMap.length),
                    style: CupertinoTheme.of(context).textTheme.textStyle),
            CupertinoButton.filled(
              onPressed: _startImport,
              child: Text(0 < progress && progress < 1
                  ? S.of(context).TextImporting
                  : S.of(context).TextImport),
            ),
          ],
        ),
      ),
    );
  }
}
