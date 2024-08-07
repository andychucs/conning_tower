import 'package:easy_debounce/easy_throttle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/generatable/settings_provider.dart';

class MyOverlayColor extends WidgetStateColor {
  final Color pressedColor;
  const MyOverlayColor(this.pressedColor) : super(_defaultColor);

  static const int _defaultColor = 0xcafefeed;

  @override
  Color resolve(Set<WidgetState> states) {
    if (states.contains(WidgetState.pressed)) {
      return pressedColor.withOpacity(0.4);
    }
    return const Color(_defaultColor);
  }
}

class DashboardTabView extends ConsumerStatefulWidget {
  final int initialIndex;

  final List<Tab> tabs;
  final List<Widget> contents;
  final EdgeInsets childPadding;
  final List<Color>? colors;

  const DashboardTabView(
      {super.key,
      required this.initialIndex,
      required this.tabs,
      required this.contents,
      this.childPadding = EdgeInsets.zero,
      this.colors});

  @override
  ConsumerState<DashboardTabView> createState() => _DashboardTabViewState();
}

class _DashboardTabViewState extends ConsumerState<DashboardTabView>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  Color? _selectedColor;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabs.length, vsync: this);
    _tabController.index = widget.initialIndex;
    if (widget.colors != null) {
      _selectedColor = widget.colors![_tabController.index];
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _tabController.addListener(() {
      _selectedColor = widget.colors![_tabController.index];
      if (!_tabController.indexIsChanging) {
        EasyThrottle.throttle(
            "dashboardIndex",
            const Duration(seconds: 1),
            () {
              print("dashboardIndex: ${_tabController.index}");
              ref
                .watch(settingsProvider.notifier)
                .setInt("dashboardIndex", _tabController.index);
            });
      }
    });

    return Padding(
      padding: widget.childPadding,
      child: Scaffold(
        bottomNavigationBar: TabBar(
          controller: _tabController,
          labelStyle: const TextStyle(fontSize: 16),
          unselectedLabelStyle: const TextStyle(fontSize: 14),
          overlayColor: const MyOverlayColor(Colors.white10),
          // physics: const BouncingScrollPhysics(),
          // padding: EdgeInsets.zero,
          // labelPadding: EdgeInsets.zero,
          tabAlignment: TabAlignment.start,
          isScrollable: true,
          // dividerColor: Colors.redAccent,
          labelColor:
              CupertinoDynamicColor.resolve(CupertinoColors.label, context),
          // unselectedLabelColor: Colors.redAccent,
          indicatorColor: _selectedColor,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 4.0,
          // indicator:BoxDecoration(
          //   color:Colors.white,
          //   borderRadius:BorderRadius.only(
          //     bottomLeft:Radius.circular(15),
          //     bottomRight:Radius.circular(15),
          //   ),
          // ),
          tabs: widget.tabs,
          onTap: (value) {
            HapticFeedback.lightImpact();
            EasyThrottle.throttle(
                "dashboardIndex",
                const Duration(seconds: 1),
                () {
                  print("dashboardIndex: $value");
                  ref
                      .watch(settingsProvider.notifier)
                      .setInt("dashboardIndex", value);
                }
            );
            _selectedColor = widget.colors![value];
          },
        ),
        body: TabBarView(
          controller: _tabController,
          children: widget.contents,
        ),
      ),
    );
  }
}
