import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import 'package:conning_tower/widgets/fade_indexed_stack.dart';
import 'package:conning_tower/pages/kc/airbase_page.dart';
import 'package:conning_tower/pages/kc/battle_result_page.dart';
import 'package:conning_tower/pages/kc/fleet_page.dart';
import 'package:conning_tower/pages/kc/map_hp_page.dart';
import 'package:conning_tower/pages/kc/mission_page.dart';
import 'package:conning_tower/pages/kc/sortie_page.dart';
late int selectedIndex;

class GameInfoPage extends StatefulWidget {
  const GameInfoPage({super.key});

  @override
  State<GameInfoPage> createState() => GameInfoPageState();
}

class GameInfoPageState extends State<GameInfoPage> {

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          bottomNavigationBar:
          BottomNavigationBar(
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: CupertinoColors.inactiveGray,
            selectedItemColor: Theme.of(context).primaryColor,
            currentIndex: selectedIndex,
            onTap: ((value) async {
              setState(() {
                selectedIndex = value;
              });
            }),
            items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 0),
              label: 'Fleet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 0),
              label: 'Battle_result',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 0),
              label: 'Mission',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 0),
              label: 'Sortie',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 0),
              label: 'Map HP',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 0),
              label: 'Airbase',
            ),

          ],),

          body: Center(
              child: FadeIndexedStack(
                index: selectedIndex,
                duration: const Duration(milliseconds: 100),
                children: <Widget>[
                  FleetPage(),
                  BattleresultPage(),
                  MissionPage(),
                  SortiePage(),
                  MaphpPage(),
                  AirbasePage(),
                ],
              ),
          ),
        ),
      );
  }
}
