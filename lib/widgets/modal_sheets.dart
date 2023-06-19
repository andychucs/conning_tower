import 'package:conning_tower/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:yaml/yaml.dart';

class ComplexModal extends StatelessWidget {
  const ComplexModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String yamlString = '''
task1:
  id: 1
  desc: task1 desc
  timer: 01:00:00
task2:
  id: 2
  desc: task2 desc
  timer: 02:00:00
''';
    YamlMap yamlMap = loadYaml(yamlString);

    return Material(
      child: WillPopScope(
        onWillPop: () async {
          bool shouldClose = true;
          await showCupertinoDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                    title: Text(S.of(context).TextShouldClose),
                    actions: <Widget>[
                      CupertinoButton(
                        child: Text(S.current.TextNo),
                        onPressed: () {
                          shouldClose = false;
                          Navigator.of(context).pop();
                        },
                      ),
                      CupertinoButton(
                        child: Text(S.current.TextYes),
                        onPressed: () {
                          shouldClose = true;
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ));
          return shouldClose;
        },
        child: Navigator(
          onGenerateRoute: (_) => MaterialPageRoute(
            builder: (context) => Builder(
              builder: (context) => CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                    transitionBetweenRoutes: false,
                    leading: Container(),
                    middle: Text('Modal Page')),
                child: SafeArea(
                  bottom: false,
                  child: ListView(
                    shrinkWrap: true,
                    controller: ModalScrollController.of(context),
                    children: ListTile.divideTiles(
                      context: context,
                      tiles: List.generate(
                          yamlMap.length,
                          (index) => ListTile(
                                title: Text(yamlMap.keys.elementAt(index)),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          CupertinoPageScaffold(
                                              navigationBar:
                                                  CupertinoNavigationBar(
                                                transitionBetweenRoutes: false,
                                                middle: Text(yamlMap.keys
                                                    .elementAt(index)),
                                              ),
                                              child: Stack(
                                                fit: StackFit.expand,
                                                children: <Widget>[
                                                  Center(
                                                      child: Text(
                                                    yamlMap[yamlMap.keys
                                                            .elementAt(
                                                                index)]["desc"]
                                                        .toString(),
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  ))
                                                ],
                                              ))));
                                },
                              )),
                    ).toList(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
