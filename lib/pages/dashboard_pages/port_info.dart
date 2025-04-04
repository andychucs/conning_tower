import 'dart:convert';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/main.dart';
import 'package:conning_tower/models/feature/kancolle/sea_force_base.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/utils/local_navigator.dart';
import 'package:conning_tower/widgets/components/edge_insets_constants.dart';
import 'package:conning_tower/widgets/cupertino_grouped_section.dart';
import 'package:conning_tower/widgets/kancolle_item_improve_viewer.dart';
import 'package:conning_tower/widgets/kancolle_ship_viewer.dart';
import 'package:conning_tower/widgets/kancolle_use_item_viewer.dart';
import 'package:conning_tower/widgets/resource_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:intl/intl.dart';

import '../../utils/toast.dart';
import '../../widgets/kancolle_item_viewer.dart';
import '../../widgets/kancolle_port_settings_page.dart';
import '../../widgets/kancolle_ship_register_viewer.dart';

class PortInfo extends ConsumerStatefulWidget {
  const PortInfo({super.key});

  @override
  ConsumerState createState() => _PortInfoState();
}

class _PortInfoState extends ConsumerState<PortInfo>
    with AutomaticKeepAliveClientMixin {
  SeaForceBase? _seaForceBase;
  double maxCrossAxisExtent = 200.0;
  double crossAxisSpacing = 12.0;
  double mainAxisSpacing = 12.0;

  @override
  void initState() {
    loadConfig();
    super.initState();
  }

  void loadConfig() {
    final layout = localStorage.getInt("KC_PORT_LAYOUT") ?? 0;
    if (layout case 0) {
      maxCrossAxisExtent = 200.0;
      crossAxisSpacing = 12.0;
      mainAxisSpacing = 12.0;
    } else if (layout case 1) {
      maxCrossAxisExtent = 170.0;
      crossAxisSpacing = 8.0;
      mainAxisSpacing = 8.0;
    }
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    print("port info dispose");
    if (_seaForceBase != null) {
      print("""port info cache: ${jsonEncode(_seaForceBase)}""");
      localStorage.setString(
          "KC_SEA_FORCE_BASE_CACHE", jsonEncode(_seaForceBase));
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var data = ref.watch(kancolleDataProvider);
    _seaForceBase =
        data.seaForceBase.admiral.name == "" ? null : data.seaForceBase;

    final nowJstTime = tz.TZDateTime.now(tz.getLocation('Asia/Tokyo'));

    return Padding(
      padding: tabContentMargin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: LocalNavigatorBuilder(
          builder: (context) {
            return CupertinoPageScaffold(
              resizeToAvoidBottomInset: false,
              child: SafeArea(
                bottom: false,
                child: CupertinoScrollbar(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        0.0, 10.0, 0.0, 10.0),
                    child: GridView(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: maxCrossAxisExtent,
                        childAspectRatio: 1.618,
                        crossAxisSpacing: crossAxisSpacing,
                        mainAxisSpacing: mainAxisSpacing,
                      ),
                      children: <Widget>[
                        InfoBox(
                          top: Text(data.seaForceBase.admiral.rankName),
                          bottom: AutoSizeText(
                            data.seaForceBase.admiral.name,
                            maxFontSize: 30,
                            minFontSize: 18,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        InfoBox(
                          top: const Text('Lv.'),
                          bottom: AutoSizeText(
                            '${data.seaForceBase.admiral.level}',
                            maxFontSize: 30,
                            minFontSize: 18,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        InfoBox(
                          onTap: () => navigatorToCupertino(
                              context, const KancolleShipViewer()),
                          top: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Text(S.of(context).TextFleetGirl)),
                              const CupertinoListTileChevron(),
                            ],
                          ),
                          bottom: AutoSizeText(
                            '${data.fleet.ships.length}/${data.seaForceBase.admiral.maxShip}',
                            maxFontSize: 30,
                            minFontSize: 18,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        InfoBox(
                          onTap: () => navigatorToCupertino(
                            context,
                            KancolleShipRegisterViewer(
                              admiralName: data.seaForceBase.admiral.name,
                            ),
                          ),
                          top: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Text(S.of(context).TextFleetGirl)),
                              const CupertinoListTileChevron(),
                            ],
                          ),
                          bottom: AutoSizeText(
                            S.of(context).KCShipRegisterList,
                            maxFontSize: 30,
                            minFontSize: 18,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        InfoBox(
                          onTap: () {
                            navigatorToCupertino(context, KancolleItemViewer());
                          },
                          top: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Text(S.of(context).TextEquipment)),
                              const CupertinoListTileChevron(),
                            ],
                          ),
                          bottom: AutoSizeText(
                            '${data.fleet.equipment.length - data.fleet.uncountedEquipments.length}/${data.seaForceBase.admiral.maxItem}',
                            maxFontSize: 30,
                            minFontSize: 18,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        InfoBox(
                          onTap: () {
                            if (data.seaForceBase.useItem == null ||
                                data.dataInfo.itemInfo == null) {
                              Toast.showWarning(
                                  title: S.of(context).TextLoginRequired,
                                  description:
                                      S.of(context).KCNeedLoginNoticeDesc);
                              return;
                            }
                            navigatorToCupertino(
                                context, KancolleUseItemViewer());
                          },
                          top: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(child: Text(S.of(context).TextItem)),
                              const CupertinoListTileChevron(),
                            ],
                          ),
                          bottom: KancolleUseItemQuickLook(
                              useItem: data.seaForceBase.useItem,
                              itemInfo: data.dataInfo.itemInfo),
                        ),
                        InfoBox(
                          onTap: () {
                            navigatorToCupertino(
                                context, const KancolleItemImproveViewer());
                          },
                          top: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: AutoSizeText(
                                  S.of(context).KCAkashiStudio,
                                  maxFontSize: 30,
                                  minFontSize: 12,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const CupertinoListTileChevron(),
                            ],
                          ),
                          bottom: AutoSizeText(
                            DateFormat.EEEE().format(nowJstTime),
                            maxFontSize: 30,
                            minFontSize: 18,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        ResourceInfoBox(
                          resource: 'fuel',
                          color: const Color.fromRGBO(32, 89, 29, 1.0),
                          admiralName: data.seaForceBase.admiral.name,
                          value: data.seaForceBase.resource.fuel,
                        ),
                        ResourceInfoBox(
                          resource: 'ammo',
                          color: const Color.fromRGBO(126, 102, 54, 1.0),
                          admiralName: data.seaForceBase.admiral.name,
                          value: data.seaForceBase.resource.ammo,
                        ),
                        ResourceInfoBox(
                          resource: 'steel',
                          color: const Color.fromRGBO(181, 180, 180, 1.0),
                          admiralName: data.seaForceBase.admiral.name,
                          value: data.seaForceBase.resource.steel,
                        ),
                        ResourceInfoBox(
                          resource: 'bauxite',
                          color: const Color.fromRGBO(219, 150, 102, 1.0),
                          admiralName: data.seaForceBase.admiral.name,
                          value: data.seaForceBase.resource.bauxite,
                        ),
                        ResourceInfoBox(
                          resource: 'ic',
                          color: const Color.fromRGBO(255, 176, 7, 1.0),
                          admiralName: data.seaForceBase.admiral.name,
                          value: data.seaForceBase.resource.instantCreateShip,
                        ),
                        ResourceInfoBox(
                          resource: 'ir',
                          color: const Color.fromRGBO(195, 212, 75, 1.0),
                          admiralName: data.seaForceBase.admiral.name,
                          value: data.seaForceBase.resource.instantRepairs,
                        ),
                        ResourceInfoBox(
                          resource: 'dm',
                          color: const Color.fromRGBO(56, 126, 132, 1.0),
                          admiralName: data.seaForceBase.admiral.name,
                          value:
                              data.seaForceBase.resource.developmentMaterials,
                        ),
                        ResourceInfoBox(
                          resource: 'im',
                          color: const Color.fromRGBO(186, 186, 186, 1.0),
                          admiralName: data.seaForceBase.admiral.name,
                          value:
                              data.seaForceBase.resource.improvementMaterials,
                        ),
                        InfoBox(
                          onTap: () => navigatorToCupertino(
                                  context, const KancollePortSettingsPage())
                              .then(
                            (value) => setState(() {
                              loadConfig();
                            }),
                          ),
                          top: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Text(S.of(context).SettingsButton)),
                              const CupertinoListTileChevron(),
                            ],
                          ),
                          bottom: Icon(
                            CupertinoIcons.settings_solid,
                            color: CupertinoColors.systemGrey2
                                .resolveFrom(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ResourceInfoBox extends StatelessWidget {
  const ResourceInfoBox({
    super.key,
    required this.resource,
    required this.color,
    required this.admiralName,
    required this.value,
  });

  final String resource;
  final Color color;
  final String admiralName;
  final int value;

  @override
  Widget build(BuildContext context) {
    return InfoBox(
      onTap: () {
        final resourceList = objectbox.queryResource(admiralName, resource);
        if (resourceList.isEmpty) {
          Toast.showWarning(
              title: S.of(context).TextLoginRequired,
              description: S.of(context).KCNeedLoginNoticeDesc);
          return;
        }
        navigatorToCupertino(
          context,
          ResourceChart(
            data: resourceList,
          ),
        );
      },
      top: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Container(
              width: 25,
              height: 25,
              color: color,
            ),
          ),
          const CupertinoListTileChevron(),
        ],
      ),
      bottom: AutoSizeText(
        "$value",
        maxFontSize: 30,
        minFontSize: 18,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox({
    super.key,
    required this.top,
    required this.bottom,
    this.onTap,
  });

  final Widget top;
  final Widget bottom;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Feedback.forTap(context);
        HapticFeedback.lightImpact();
        if (onTap != null) onTap!();
      },
      child: CupertinoGroupedSection(
        padding: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Flex(
            direction: Axis.vertical,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: top,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: bottom,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
