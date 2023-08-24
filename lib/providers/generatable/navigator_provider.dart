import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigator_provider.g.dart';


@riverpod
class FunctionLayerNavigator extends _$FunctionLayerNavigator {
  late BuildContext context;
  int index = 0;
  late Function setState;
  bool isSub = false;
  @override
  FunctionLayerNavigator build() {
    return this;
  }

  void init(BuildContext context, Function setState) {
    state.context = context;
    state.setState = setState;
  }

  void push(Widget widget) =>
      Navigator.of(state.context).push(CupertinoPageRoute<Widget>(
        builder: (BuildContext context) {
          return widget;
        },
      ));

  void pop<T extends Object?>([T? result]) =>
      Navigator.of(state.context).pop<T>(result);

  void changeIndex(int index) {
    if(Navigator.of(state.context).canPop()) Navigator.of(state.context).popUntil(ModalRoute.withName('/'));
    state.index = index;
    state.setState();
  }

}
