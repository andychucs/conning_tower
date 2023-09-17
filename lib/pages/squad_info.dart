import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/ship.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SquadInfo extends ConsumerStatefulWidget {
  const SquadInfo({super.key});

  @override
  ConsumerState createState() => _SquadInfoState();
}

class _SquadInfoState extends ConsumerState<SquadInfo> {
  int _selectedSegment = 0;
  late Ship _selectedShip;
  bool _showShipInfo = false;

  @override
  Widget build(BuildContext context) {
    var data = ref.watch(kancolleDataProvider);
    var squads = data.squads;
    Map<int, Widget> segments = {
      0: const Text("1"),
      1: const Text("2"),
      2: const Text("3"),
      3: const Text("4")
    };
    for (var element in squads) {
      segments.update(squads.indexOf(element), (value) => Text(element.name,style: TextStyle(fontSize: 14),));
    }

    Widget body = CupertinoListSection.insetGrouped(
      children: const [
        CupertinoListTile.notched(
          title: Text("N/A"),
        ),
      ],
    );

    if (squads.length > _selectedSegment) {
      if (squads[_selectedSegment].ships.isNotEmpty) {
        body = CupertinoListSection.insetGrouped(
          children: List.generate(
            squads[_selectedSegment].ships.length,
            (index) => CupertinoListTile(
              title: Text(squads[_selectedSegment].ships[index].name),
              onTap: () {
                setState(() {
                  _selectedShip = squads[_selectedSegment].ships[index];
                  _showShipInfo = true;
                });
              },
              additionalInfo: Text(
                "HP:${squads[_selectedSegment].ships[index].nowHP}/${squads[_selectedSegment].ships[index].maxHP}",
                style: TextStyle(color: squads[_selectedSegment].ships[index].damageColor)
              ),
              trailing: Icon(
                CupertinoIcons.circle,
                color: squads[_selectedSegment].ships[index].sparked ? Colors.yellowAccent : null,
              ),
            ),
          ),
        );
      }
    }

    if (_showShipInfo) {
      body = CupertinoListSection.insetGrouped(
        header: CupertinoListSectionDescription(_selectedShip.name),
        children: [
          CupertinoListTile(
            title: Text("Lv"),
            additionalInfo: Text('${_selectedShip.level}'),
          ),
          CupertinoListTile(
            title: Text("Lv. up EXP"),
            additionalInfo: Text('${_selectedShip.exp[1]}'),
          ),
          CupertinoListTile(
            title: Text("疲労度"),
            additionalInfo: Text('${_selectedShip.condition}'),
          ),
          CupertinoListTile(
            title: Text("損傷"),
            additionalInfo: Text(_selectedShip.damageLevel),
          ),
          CupertinoListTile(
            title: Text("速力"),
            additionalInfo: Text(_selectedShip.speedLevel),
          ),
          CupertinoListTile(
            title: Text("火力"),
            additionalInfo: Text('${_selectedShip.attack?[0]}/${_selectedShip.attack?[1]}'),
          ),
          CupertinoListTile(
            title: Text("雷装"),
            additionalInfo: Text('${_selectedShip.attackT?[0]}/${_selectedShip.attackT?[1]}'),
          ),
          CupertinoListTile(
            title: Text("対空"),
            additionalInfo: Text('${_selectedShip.antiAircraft?[0]}/${_selectedShip.antiAircraft?[1]}'),
          ),
          CupertinoListTile(
            title: Text("装甲"),
            additionalInfo: Text('${_selectedShip.armor?[0]}/${_selectedShip.armor?[1]}'),
          ),
          CupertinoListTile(
            title: Text("回避"),
            additionalInfo: Text('${_selectedShip.evasion?[0]}/${_selectedShip.evasion?[1]}'),
          ),
          CupertinoListTile(
            title: Text("対潜"),
            additionalInfo: Text('${_selectedShip.antiSubmarine?[0]}/${_selectedShip.antiSubmarine?[1]}'),
          ),
          CupertinoListTile(
            title: Text("索敵"),
            additionalInfo: Text('${_selectedShip.scout?[0]}/${_selectedShip.scout?[1]}'),
          ),
          CupertinoListTile(
            title: Text("射程"),
            additionalInfo: Text(_selectedShip.attackRangeLevel),
          ),
          CupertinoListTile(
            title: Text("運"),
            additionalInfo: Text('${_selectedShip.luck?[0]}/${_selectedShip.luck?[1]}'),
          ),
          CupertinoListTile(
            title: Text("ID"),
            additionalInfo: Text('${_selectedShip.uid}'),
          ),
          CupertinoListTile(
            leading: Icon(CupertinoIcons.back),
            title: Text(S.of(context).AppBack),
            onTap: () {
              setState(() {
                _showShipInfo = false;
              });
            },
          ),
        ],
      );
    }

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        transitionBetweenRoutes: false,
        backgroundColor: Colors.transparent,
        border: null,
        middle: CupertinoSlidingSegmentedControl(
          groupValue: _selectedSegment,
          onValueChanged: (int? value) {
            if (value != null) {
              setState(() {
                _selectedSegment = value;
                _showShipInfo = false;
              });
            }
          },
          children: segments,
        ),
      ),
      child: SafeArea(
        child: CustomScrollView(slivers: [
          SliverList(
            delegate: SliverChildListDelegate([body]),
          ),
        ]),
      ),
    );
  }
}
