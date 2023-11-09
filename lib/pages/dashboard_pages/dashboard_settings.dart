import 'package:conning_tower/pages/kancolle_listen_settings.dart';
import 'package:conning_tower/utils/local_navigator.dart';
import 'package:flutter/cupertino.dart';

class DashboardSettings extends StatelessWidget {
  const DashboardSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const LocalNavigator(
        child: KancolleListenSettings(showNavigatorBar: false));
  }
}
