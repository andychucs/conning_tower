import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/widgets/cupertino_grouped_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

    return LayoutBuilder(
      builder: (context, constraints) {
        // 1 column width about 120 ~ 240
        log("${constraints.maxWidth}");
        int crossAxisCount = 2;
        if (constraints.maxWidth < 250)
          crossAxisCount = 1;
        if (constraints.maxWidth > 450) {
          crossAxisCount = (constraints.maxWidth/200).ceil();
        }
        return CupertinoScrollbar(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: crossAxisCount,
                  childAspectRatio: 1.618,
                  children: <Widget>[
                    InfoBox(
                      top: Text(commanderInfo.rankName),
                      bottom: AutoSizeText(
                        commanderInfo.name,
                        style: TextStyle(fontSize: 30),
                        minFontSize: 16,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    InfoBox(
                      top: Text('Lv.'),
                      bottom: AutoSizeText(
                        '${commanderInfo.level}',
                        style: TextStyle(fontSize: 30),
                        minFontSize: 16,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    InfoBox(
                      top: Text(S.of(context).TextFleetGirl),
                      bottom: AutoSizeText(
                        '${fleetInfo.ships.length}/${commanderInfo.maxShip}',
                        style: TextStyle(fontSize: 30),
                        minFontSize: 16,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    InfoBox(
                      top: Text(S.of(context).TextEquipment),
                      bottom: AutoSizeText(
                        '${fleetInfo.equipment.length}/${commanderInfo.maxItem}',
                        style: TextStyle(fontSize: 30),
                        minFontSize: 16,
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
                          color: const Color.fromRGBO(32, 89, 29, 1.0),
                        ),
                      ),
                      bottom: AutoSizeText(
                        "${resourceInfo.oil}",
                        style: TextStyle(fontSize: 30),
                        minFontSize: 16,
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
                        style: TextStyle(fontSize: 30),
                        minFontSize: 16,
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
                        style: TextStyle(fontSize: 30),
                        minFontSize: 16,
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
                        style: TextStyle(fontSize: 30),
                        minFontSize: 16,
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
                        style: TextStyle(fontSize: 30),
                        minFontSize: 16,
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
                        style: TextStyle(fontSize: 30),
                        minFontSize: 16,
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
                        style: TextStyle(fontSize: 30),
                        minFontSize: 16,
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
                        style: TextStyle(fontSize: 30),
                        minFontSize: 16,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
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
      padding: EdgeInsets.all(8.0),
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
