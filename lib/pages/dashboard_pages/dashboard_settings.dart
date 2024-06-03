import 'package:conning_tower/pages/kancolle_listen_settings.dart';
import 'package:conning_tower/pages/settings_page.dart';
import 'package:conning_tower/utils/local_navigator.dart';
import 'package:conning_tower/widgets/components/edge_insets_constants.dart';
import 'package:flutter/cupertino.dart';

enum SettingsType { kancolle, appSettings }

class DashboardSettings extends StatelessWidget {
  final SettingsType settingsType;
  const DashboardSettings({super.key, required this.settingsType});

  @override
  Widget build(BuildContext context) {
    if (settingsType == SettingsType.appSettings) {
      return Padding(
        padding: tabContentMargin,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: const LocalNavigator(
              child: SettingsPage(),
            )),
      );
    }
    return Padding(
      padding: tabContentMargin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: const LocalNavigator(
          child: KancolleListenSettings(showNavigatorBar: false),
        ),
      ),
    );
  }
}
