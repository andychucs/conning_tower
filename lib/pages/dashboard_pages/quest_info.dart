import 'package:conning_tower/generated/l10n.dart';
import 'package:conning_tower/models/feature/dashboard/kancolle/quest_assistant.dart';
import 'package:conning_tower/pages/dashboard_pages/squad_info.dart';
import 'package:conning_tower/providers/kancolle_data_provider.dart';
import 'package:conning_tower/widgets/scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _sectionMargin = EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 10.0);

class QuestInfoPage extends ConsumerStatefulWidget {
  const QuestInfoPage({super.key});

  @override
  ConsumerState createState() => _QuestInfoPageState();
}

class _QuestInfoPageState extends ConsumerState<QuestInfoPage> {
  int _selectedSegment = 0;

  @override
  Widget build(BuildContext context) {
    final PageController controller =
        PageController(initialPage: _selectedSegment);
    final data = ref.watch(kancolleDataProvider);
    final questAssistant = data.questAssistant;
    // final List<Quest> questList = switch (_selectedSegment) {
    //   0 => questAssistant?.inProgress ?? [],
    //   1 => questAssistant?.todo ?? [],
    //   2 => questAssistant?.done ?? [],
    //   _ => [],
    // };
    final questLists = [
      questAssistant?.inProgress ?? [],
      questAssistant?.todo ?? [],
      questAssistant?.done ?? []
    ];

    return SafeArea(
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 0.0, 10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              automaticallyImplyLeading: false,
              transitionBetweenRoutes: false,
              backgroundColor:
                  CupertinoColors.systemGroupedBackground.resolveFrom(context),
              border: null,
              middle: CupertinoSlidingSegmentedControl(
                groupValue: _selectedSegment,
                onValueChanged: (int? value) {
                  if (value != null) {
                    setState(() {
                      _selectedSegment = value;
                      controller.animateToPage(value,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.ease);
                    });
                  }
                },
                children: {
                  0: Text(S.current.KCDashboardQuestInProgress),
                  1: Text(S.current.KCDashboardQuestToDo),
                  2: Text(S.current.KCDashboardQuestDone)
                },
              ),
            ),
            child: SafeArea(
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    _selectedSegment = value;
                  });
                },
                children: List.generate(3, (index) {
                  final questList = questLists[index];
                  if (questList.isEmpty) {
                    return Container();
                  }
                  return ScrollViewWithCupertinoScrollbar(
                    child: CupertinoListSection.insetGrouped(
                      margin: _sectionMargin,
                      children: List.generate(
                        questList.length,
                        (index) => CupertinoListTile(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          title: Text(questList[index].title ?? ''),
                          subtitle: questList[index].detail != null
                              ? Text(
                                  questList[index]
                                      .detail!
                                      .replaceAll("<br>", ""),
                                  softWrap: true,
                                  maxLines: 6,
                                )
                              : null,
                          // trailing: Text('${questList[index].id}'),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// CupertinoListTile(
// title: Text('精强「十七驱」，向北，向南！'),
// trailing: Text('B123'),
// subtitle: Text("包含矶风乙改、浜风乙改、浦风丁改、谷风丁改四艘编成的舰队"),
// ),
// CupertinoListTile(
// title: Text('1-5'),
// trailing: Text('1/1'),
// additionalInfo: Text('A'),
// ),
// CupertinoListTile(
// title: Text('3-2'),
// trailing: Text('0/1'),
// additionalInfo: Text('A'),
// ),
// CupertinoListTile(
// title: Text('7-1'),
// trailing: Text('0/1'),
// additionalInfo: Text('A'),
// ),
// CupertinoListTile(
// title: Text('5-1'),
// trailing: Text('0/1'),
// additionalInfo: Text('A'),
// ),
