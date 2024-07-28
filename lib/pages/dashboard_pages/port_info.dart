import 'package:auto_size_text/auto_size_text.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/helper.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/utils/local_navigator.dart';
import 'package:conning_tower/widgets/components/edge_insets_constants.dart';
import 'package:conning_tower/widgets/cupertino_grouped_section.dart';
import 'package:conning_tower/widgets/kancolle_item_improve_viewer.dart';
import 'package:conning_tower/widgets/kancolle_ship_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:intl/intl.dart';

import '../../widgets/kancolle_item_viewer.dart';

class PortInfo extends ConsumerStatefulWidget {
  const PortInfo({super.key});

  @override
  ConsumerState createState() => _PortInfoState();
}

class _PortInfoState extends ConsumerState<PortInfo> {
  @override
  Widget build(BuildContext context) {
    var data = ref.watch(kancolleDataProvider);
    final resourceInfo = data.seaForceBase.resource;
    final commanderInfo = data.seaForceBase.commander;
    final fleetInfo = data.fleet;
    final nowJstTime = tz.TZDateTime.now(tz.getLocation('Asia/Tokyo'));

    return SafeArea(
      child: Padding(
        padding: tabContentMargin,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: LocalNavigatorBuilder(
              builder: (context) {
                return CupertinoPageScaffold(
                  child: LayoutBuilder(
                      builder: (context, constraints) {
                        // 1 column width about 120 ~ 240
                        int crossAxisCount = 2;
                        if (constraints.maxWidth < 250)
                          crossAxisCount = 1;
                        if (constraints.maxWidth > 400) {
                          crossAxisCount = (constraints.maxWidth/200).ceil();
                        }
                        print(constraints.maxWidth);

                        return CupertinoScrollbar(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 5.0, 10.0),
                            child: CustomScrollView(
                              slivers: <Widget>[
                                SliverPadding(
                                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                                  sliver: SliverGrid.count(
                                    crossAxisSpacing: 12,
                                    mainAxisSpacing: 12,
                                    crossAxisCount: crossAxisCount,
                                    childAspectRatio: 1.618,
                                    children: <Widget>[
                                      InfoBox(
                                        top: Text(commanderInfo.rankName),
                                        bottom: AutoSizeText(
                                          commanderInfo.name,
                                          maxFontSize: 30,
                                          minFontSize: 18,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      InfoBox(
                                        top: Text('Lv.'),
                                        bottom: AutoSizeText(
                                          '${commanderInfo.level}',
                                          maxFontSize: 30,
                                          minFontSize: 18,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      GestureDetector(
                                        child: InfoBox(
                                          top: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(child: Text(S.of(context).TextFleetGirl)),
                                              const CupertinoListTileChevron(),
                                            ],
                                          ),
                                          bottom: AutoSizeText(
                                            '${fleetInfo.ships.length}/${commanderInfo.maxShip}',
                                            maxFontSize: 30,
                                            minFontSize: 18,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        onTap: () {
                                          navigatorToCupertino(context, KancolleShipViewer());
                                        },
                                      ),
                                      GestureDetector(
                                        child: InfoBox(
                                          top: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(child: Text(S.of(context).TextEquipment)),
                                              const CupertinoListTileChevron(),
                                            ],
                                          ),
                                          bottom: AutoSizeText(
                                            '${fleetInfo.equipment.length}/${commanderInfo.maxItem}',
                                            maxFontSize: 30,
                                            minFontSize: 18,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        onTap: () {
                                          navigatorToCupertino(context, KancolleItemViewer());
                                        },
                                      ),
                                      GestureDetector(
                                        child: InfoBox(
                                          top: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(S.of(context).KCAkashiStudio),
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
                                        onTap: () {
                                          navigatorToCupertino(context, KancolleItemImproveViewer());
                                        },
                                      ),
                                      InfoBox(
                                        top: ClipRRect(
                                          borderRadius: BorderRadius.circular(8.0),
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            color: const Color.fromRGBO(32, 89, 29, 1.0),
                                          ),
                                        ),
                                        bottom: AutoSizeText(
                                          "${resourceInfo.oil}",
                                          maxFontSize: 30,
                                          minFontSize: 18,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      InfoBox(
                                        top: ClipRRect(
                                          borderRadius: BorderRadius.circular(8.0),
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            color: const Color.fromRGBO(126, 102, 54, 1.0),
                                          ),
                                        ),
                                        bottom: AutoSizeText(
                                          "${resourceInfo.ammo}",
                                          maxFontSize: 30,
                                          minFontSize: 18,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      InfoBox(
                                        top: ClipRRect(
                                          borderRadius: BorderRadius.circular(8.0),
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            color: Color.fromRGBO(181, 180, 180, 1.0),
                                          ),
                                        ),
                                        bottom: AutoSizeText(
                                          "${resourceInfo.steel}",
                                          maxFontSize: 30,
                                          minFontSize: 18,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      InfoBox(
                                        top: ClipRRect(
                                          borderRadius: BorderRadius.circular(8.0),
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            color: Color.fromRGBO(219, 150, 102, 1.0),
                                          ),
                                        ),
                                        bottom: AutoSizeText(
                                          "${resourceInfo.bauxite}",
                                          maxFontSize: 30,
                                          minFontSize: 18,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      InfoBox(
                                        top: ClipRRect(
                                          borderRadius: BorderRadius.circular(8.0),
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            color: Color.fromRGBO(255, 176, 7, 1.0),
                                          ),
                                        ),
                                        bottom: AutoSizeText(
                                          "${resourceInfo.instantCreateShip}",
                                          maxFontSize: 30,
                                          minFontSize: 18,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      InfoBox(
                                        top: ClipRRect(
                                          borderRadius: BorderRadius.circular(8.0),
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            color: Color.fromRGBO(195, 212, 75, 1.0),
                                          ),
                                        ),
                                        bottom: AutoSizeText(
                                          "${resourceInfo.instantRepairs}",
                                          maxFontSize: 30,
                                          minFontSize: 18,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      InfoBox(
                                        top: ClipRRect(
                                          borderRadius: BorderRadius.circular(8.0),
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            color: Color.fromRGBO(56, 126, 132, 1.0),
                                          ),
                                        ),
                                        bottom: AutoSizeText(
                                          "${resourceInfo.developmentMaterials}",
                                          maxFontSize: 30,
                                          minFontSize: 18,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      InfoBox(
                                        top: ClipRRect(
                                          borderRadius: BorderRadius.circular(8.0),
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            color: Color.fromRGBO(186, 186, 186, 1.0),
                                          ),
                                        ),
                                        bottom: AutoSizeText(
                                          "${resourceInfo.improvementMaterials}",
                                          maxFontSize: 30,
                                          minFontSize: 18,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox({
    super.key,
    required this.top,
    required this.bottom,
  });

  final Widget top;
  final Widget bottom;

  @override
  Widget build(BuildContext context) {
    return CupertinoGroupedSection(
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
    );
  }
}
