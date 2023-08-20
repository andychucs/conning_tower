import 'package:flutter/cupertino.dart';

class LocalNavigator extends StatelessWidget {
  final Widget child;

  const LocalNavigator({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        return CupertinoPageRoute(
          settings: const RouteSettings(name: '/'),
          builder: (context) {
            return child;
          },
        );
      },
    );
  }
}
