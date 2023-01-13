import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:settings_ui/settings_ui.dart';
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
    return NestedScrollView(
      headerSliverBuilder: (context, bool innerBoxIsScrolled) {
        return [
          CupertinoSliverNavigationBar(
            largeTitle: Text("Game Info"),
          ),
        ];
      },
      body: SafeArea(
        top: false,
        bottom: false,
        child: Text("Game Info"),
      ),
    );
  }
}
