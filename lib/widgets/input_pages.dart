import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSelectPage extends StatefulWidget {
  const CupertinoSelectPage(
      {super.key,
      required this.title,
      required this.items,
      required this.selected,
      required this.onItemSelected, required this.previousPageTitle});

  final String title;
  final String previousPageTitle;
  final List<String> items;
  final int selected;
  final Function(int) onItemSelected;

  @override
  State<CupertinoSelectPage> createState() => _CupertinoSelectPageState();
}

class _CupertinoSelectPageState extends State<CupertinoSelectPage> {
  late int selected;

  @override
  void initState() {
    super.initState();
    selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text(widget.title),
        previousPageTitle: widget.previousPageTitle,
      ),
      child: SafeArea(
        bottom: false,
        child: CupertinoListSection.insetGrouped(
          children: List.generate(
              widget.items.length,
              (index) => CupertinoListTile(
                    title: Text(widget.items[index]),
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                      widget.onItemSelected(selected);
                    },
                    trailing: Icon(selected == index
                        ? CupertinoIcons.checkmark_alt
                        : null),
                  )),
        ),
      ),
    );
  }
}

class CupertinoListInputPage extends StatelessWidget {
  const CupertinoListInputPage({
    super.key,
    required this.textController,
    required this.title,
    required this.onSubmit, required this.previousPageTitle,
  });

  final TextEditingController textController;
  final String title;
  final String previousPageTitle;
  final Function(String) onSubmit;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text(title),
        previousPageTitle: previousPageTitle,
      ),
      child: SafeArea(
        bottom: false,
        child: CupertinoListSection.insetGrouped(
          children: [
            CupertinoListTile(
              title: CupertinoTextField.borderless(
                controller: textController,
                onSubmitted: (content) {
                  onSubmit(content);
                  Navigator.pop(context);
                },
                onChanged: (content) {
                  onSubmit(content);
                },
                clearButtonMode: OverlayVisibilityMode.always,
                autocorrect: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}


class CupertinoActionPage extends StatelessWidget {
  const CupertinoActionPage({
    super.key,
    required this.title, required this.child, required this.previousPageTitle,
  });

  final String title;
  final String previousPageTitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        middle: Text(title),
        previousPageTitle: previousPageTitle,
      ),
      child: SafeArea(
        bottom: false,
        child: child,
      ),
    );
  }
}

const Color kHeaderFooterColor = CupertinoDynamicColor(
  color: Color.fromRGBO(108, 108, 108, 1.0),
  darkColor: Color.fromRGBO(142, 142, 146, 1.0),
  highContrastColor: Color.fromRGBO(74, 74, 77, 1.0),
  darkHighContrastColor: Color.fromRGBO(176, 176, 183, 1.0),
  elevatedColor: Color.fromRGBO(108, 108, 108, 1.0),
  darkElevatedColor: Color.fromRGBO(142, 142, 146, 1.0),
  highContrastElevatedColor: Color.fromRGBO(108, 108, 108, 1.0),
  darkHighContrastElevatedColor: Color.fromRGBO(142, 142, 146, 1.0),
);

class CupertinoListSectionDescription extends StatelessWidget {
  const CupertinoListSectionDescription(this.data, {
    super.key,
  });
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        data,
        style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.normal,
            color: CupertinoDynamicColor.resolve(kHeaderFooterColor, context)),
      ),
    );
  }
}
