import 'package:conning_tower/models/feature/dashboard/kancolle/squad.dart';
import 'package:conning_tower/widgets/cupertino_grouped_section.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

const EdgeInsetsDirectional _kBattleInfoGridMargin =
    EdgeInsetsDirectional.fromSTEB(4.0, 10.0, 8.0, 8.0);

class BattleInfo extends ConsumerStatefulWidget {
  const BattleInfo({super.key});

  @override
  ConsumerState createState() => _BattleInfoState();
}

class _BattleInfoState extends ConsumerState<BattleInfo> {
  @override
  Widget build(BuildContext context) {
    bool combinedFleet = true;
    int crossAxisCount = 1;

    List fleets = [
      ["A1", "B1", "C1", "D1", "E1", "F1"],
      ["A2", "B2", "C2", "D2", "E2", "F2"],
      ["A3", "B3", "C3", "D3", "E3", "F3"],
      ["A4", "B4", "C4", "D4", "E4", "F4"],
    ];

    var items = [
      CupertinoListSection.insetGrouped(
        margin: _kBattleInfoGridMargin,
        header: CupertinoListSectionDescription("第1艦隊"),
        children: [
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
        ],
      ),
      CupertinoListSection.insetGrouped(
        margin: _kBattleInfoGridMargin,
        header: CupertinoListSectionDescription("第2艦隊"),
        children: [
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
        ],
      ),
      CupertinoListSection.insetGrouped(
        margin: _kBattleInfoGridMargin,
        header: CupertinoListSectionDescription("敵艦隊"),
        children: [
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
        ],
      ),
      CupertinoListSection.insetGrouped(
        margin: _kBattleInfoGridMargin,
        header: CupertinoListSectionDescription("敵艦隊"),
        children: [
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
          ShipInfoInBattle(),
        ],
      )
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        debugPrint(constraints.maxWidth.toString());
        if (constraints.maxWidth >= 600) {
          crossAxisCount = 2;
        }
        return MasonryGridView.count(
          crossAxisCount: crossAxisCount,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return items[index];
          },
        );
      },
    );
  }
}

class ShipInfoInBattle extends StatelessWidget {
  const ShipInfoInBattle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoListTile.notched(
      leadingSize: 50,
      leading: CircularPercentIndicator(
        reverse: true,
        radius: 21.0,
        lineWidth: 9.0,
        percent: 0.9,
        center: Text("100", style: TextStyle(fontSize: 12),),
        progressColor: Colors.green,
      ),
      title: Text("大和"),
    );
  }
}
