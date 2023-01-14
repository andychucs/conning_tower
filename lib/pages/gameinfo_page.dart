import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../generated/l10n.dart';

class GameInfoPage extends StatefulWidget {
  const GameInfoPage({super.key, required this.reloadConfig});
  final Function() reloadConfig;

  @override
  State<GameInfoPage> createState() => GameInfoPageState();
}

class GameInfoPageState extends State<GameInfoPage> {
  bool enableAutoProcessSwitchValue = true;

  @override
  void initState() {
    super.initState();
    _loadConfig();
  }

  Future<void> _loadConfig() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      enableAutoProcessSwitchValue =
          (prefs.getBool('enableAutoProcess') ?? true);
    });
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
              label: 'Sortle',
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

          body: const Center(
            child: Text(
              'This is the home page',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      );
  }
}
