import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/pages/about_page.dart';
import 'package:conning_tower/pages/settings_page.dart';
import 'package:conning_tower/pages/tools_page.dart';
import 'package:conning_tower/providers/theme_provider.dart';
import 'package:conning_tower/providers/generatable/navigator_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FunctionalLayer extends ConsumerWidget {
  const FunctionalLayer(
      {super.key,
      required this.notifyParent,
      required this.reloadConfig,
      this.cookieManager});
  final Function() notifyParent;
  final CookieManager? cookieManager;
  final Function() reloadConfig;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final theme = themeMode == ThemeMode.system
        ? null
        : (themeMode == ThemeMode.dark
            ? CupertinoThemeData(brightness: Brightness.dark)
            : CupertinoThemeData(brightness: Brightness.light));

    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: theme,
      home: FunctionalLayerHome(
        notifyParent: notifyParent,
        reloadConfig: reloadConfig,
        cookieManager: cookieManager,
      ),
    );
  }
}

class FunctionalLayerHome extends ConsumerStatefulWidget {
  const FunctionalLayerHome(
      {super.key,
      required this.notifyParent,
      required this.reloadConfig,
      this.cookieManager});
  final Function() notifyParent;
  final CookieManager? cookieManager;
  final Function() reloadConfig;

  @override
  ConsumerState createState() => _FunctionalLayerHomeState();
}

class _FunctionalLayerHomeState extends ConsumerState<FunctionalLayerHome> {
  late int index;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final navigator = ref.watch(functionLayerNavigatorProvider);
    navigator.init(context, () => setState(() {}));
    index = navigator.index;
    switch (index) {
      case 1:
        return ToolsPage(widget.cookieManager,
            notifyParent: widget.notifyParent,
            reloadConfig: widget.reloadConfig);
      case 2:
        return SettingsPage(
            notifyParent: widget.notifyParent,
            reloadConfig: widget.reloadConfig);
      case 3:
        return AboutPage();
      default:
        return ToolsPage(widget.cookieManager,
            notifyParent: widget.notifyParent,
            reloadConfig: widget.reloadConfig);
    }
  }
}

class FunctionalPage extends StatefulWidget {
  const FunctionalPage({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  State<FunctionalPage> createState() => _FunctionalPageState();
}

class _FunctionalPageState extends State<FunctionalPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: CupertinoScrollbar(
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text(widget.title),
              backgroundColor: CupertinoColors.systemGroupedBackground,
              border: null,
            ),
            SliverList(
              delegate: SliverChildListDelegate(widget.children),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleChildFunctionalPage extends StatefulWidget {
  const SingleChildFunctionalPage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<SingleChildFunctionalPage> createState() =>
      _SingleChildFunctionalPageState();
}

class _SingleChildFunctionalPageState extends State<SingleChildFunctionalPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      child: widget.child,
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(title),
        previousPageTitle: 'Settings',
      ),
      child: Container(),
    );
  }
}
