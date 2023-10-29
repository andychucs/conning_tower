import 'package:carousel_slider/carousel_slider.dart';
import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/widgets/components/label.dart';
import 'package:conning_tower/widgets/input_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SquadInfo extends ConsumerStatefulWidget {
  const SquadInfo({super.key});

  @override
  ConsumerState createState() => _SquadInfoState();
}

class _SquadInfoState extends ConsumerState<SquadInfo> {
  int _selectedSegment = 0;

  late int _selectedShip;
  bool _showShipInfo = false;

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: _selectedSegment);
    var data = ref.watch(kancolleDataProvider);
    var squads = data.squads;
    late Map<int, Widget> segments;
    late Widget body;
    late List<Widget> pages;
    if (squads.isEmpty) {
      segments = {
        0: const Text("1"),
        1: const Text("2"),
        2: const Text("3"),
        3: const Text("4")
      };
      body = CupertinoListSection.insetGrouped(
        children: const [
          CupertinoListTile(
            title: Text("N/A"),
          ),
        ],
      );
      pages = <Widget>[body, body, body, body];
    } else {
      segments = {
        for (var element in squads)
          squads.indexOf(element):
              Text(element.name, style: const TextStyle(fontSize: 14))
      };

      pages = List.generate(squads.length, (index) {
        var squad = squads[index];
        if (squad.ships.isNotEmpty) {
          return ScrollViewPageWithScrollbar(
            child: CupertinoListSection.insetGrouped(
              margin: EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 10.0),
              children: List.generate(
                squad.ships.length,
                (_index) => CupertinoListTile(
                  title: Text(squad.ships[_index].name!),
                  padding:
                      const EdgeInsetsDirectional.only(start: 10.0, end: 8.0),
                  leading: CarouselSlider(
                    items: [
                      AttributeLabel.vertical(
                          label: 'Lv', value: '${squad.ships[_index].level}'),
                      AttributeLabel.vertical(
                          label: 'Lv Up', value: '${squad.ships[_index].exp?[1]}'),
                    ],
                    options: CarouselOptions(
                      height: 30,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.ease,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  leadingToTitle: 4,
                  onTap: () {
                    setState(() {
                      _selectedShip = _index;
                      _showShipInfo = true;
                    });
                  },
                  additionalInfo: SizedBox(
                      width: 70,
                      child: Text(
                        "${squad.ships[_index].nowHP}/${squad.ships[_index].maxHP}",
                        textAlign: TextAlign.end,
                      )),
                  subtitle: LinearPercentIndicator(
                    backgroundColor: CupertinoDynamicColor.resolve(
                        CupertinoColors.systemGroupedBackground, context),
                    animation: true,
                    animationDuration: 500,
                    barRadius: const Radius.circular(2.5),
                    animateFromLastPercent: true,
                    lineHeight: 5.0,
                    percent:
                        squad.ships[_index].nowHP / squad.ships[_index].maxHP,
                    progressColor: squad.ships[_index].damageColor,
                  ),
                  trailing: CircularPercentIndicator(
                    backgroundColor: CupertinoDynamicColor.resolve(
                        CupertinoColors.systemGroupedBackground, context),
                    reverse: true,
                    radius: 12.0,
                    lineWidth: 5.0,
                    animation: true,
                    animationDuration: 500,
                    animateFromLastPercent: true,
                    circularStrokeCap: CircularStrokeCap.round,
                    percent: squad.ships[_index].condition! / 100,
                    // center: Text('${squad.ships[_index].condition}', style: TextStyle(fontSize: 8),),
                    progressColor: squad.ships[_index].sparkColor,
                  ),
                ),
              ),
            ),
          );
        }
        return CupertinoListSection.insetGrouped(
          children: const [
            CupertinoListTile.notched(
              title: Text("N/A"),
            ),
          ],
        );
      });
    }

    if (_showShipInfo) {
      var ship = squads[_selectedSegment].ships[_selectedShip];
      body = CupertinoListSection.insetGrouped(
        margin: EdgeInsetsDirectional.fromSTEB(10.0, 0, 10.0, 10.0),
        header: CupertinoListSectionDescription(ship.name!),
        children: [
          CupertinoListTile(
            title: Text("Lv"),
            additionalInfo: Text('${ship.level}'),
          ),
          CupertinoListTile(
            title: Text("Lv. up EXP"),
            additionalInfo: Text('${ship.exp?[1]}'),
          ),
          CupertinoListTile(
            title: Text("疲労度"),
            additionalInfo: Text('${ship.condition}'),
          ),
          CupertinoListTile(
            title: Text("損傷"),
            additionalInfo: Text(ship.damageLevel),
          ),
          CupertinoListTile(
            title: Text("速力"),
            additionalInfo: Text(ship.speedLevel),
          ),
          CupertinoListTile(
            title: Text("火力"),
            additionalInfo: Text('${ship.attack?[0]}/${ship.attack?[1]}'),
          ),
          CupertinoListTile(
            title: Text("雷装"),
            additionalInfo: Text('${ship.attackT?[0]}/${ship.attackT?[1]}'),
          ),
          CupertinoListTile(
            title: Text("対空"),
            additionalInfo: Text('${ship.antiAircraft?[0]}/${ship.antiAircraft?[1]}'),
          ),
          CupertinoListTile(
            title: Text("装甲"),
            additionalInfo: Text('${ship.armor?[0]}/${ship.armor?[1]}'),
          ),
          CupertinoListTile(
            title: Text("回避"),
            additionalInfo: Text('${ship.evasion?[0]}/${ship.evasion?[1]}'),
          ),
          CupertinoListTile(
            title: Text("対潜"),
            additionalInfo: Text('${ship.antiSubmarine?[0]}/${ship.antiSubmarine?[1]}'),
          ),
          CupertinoListTile(
            title: Text("索敵"),
            additionalInfo: Text('${ship.scout?[0]}/${ship.scout?[1]}'),
          ),
          CupertinoListTile(
            title: Text("射程"),
            additionalInfo: Text(ship.attackRangeLevel),
          ),
          CupertinoListTile(
            title: Text("運"),
            additionalInfo: Text('${ship.luck?[0]}/${ship.luck?[1]}'),
          ),
          CupertinoListTile(
            title: Text("ID"),
            additionalInfo: Text('${ship.uid}'),
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

    return SafeArea(
      child: CupertinoPageScaffold(
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
                  if (_showShipInfo) {
                    _showShipInfo = false;
                  } else {
                    controller.animateToPage(value,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.ease);
                  }
                });
              }
            },
            children: segments,
          ),
        ),
        child: SafeArea(
          child: _showShipInfo
              ? ScrollViewPageWithScrollbar(child: body)
              : PageView(
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      _selectedSegment = value;
                    });
                  },
                  children: pages,
                ),
        ),
      ),
    );
  }
}

class ScrollViewPageWithScrollbar extends StatelessWidget {
  const ScrollViewPageWithScrollbar({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: CustomScrollView(slivers: [
        SliverList(
          delegate: SliverChildListDelegate([child]),
        ),
      ]),
    );
  }
}
