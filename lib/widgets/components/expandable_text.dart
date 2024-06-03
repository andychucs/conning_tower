import 'package:flutter/cupertino.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  const ExpandableText(this.text, {super.key});

  @override
  ExpandableTextState createState() => ExpandableTextState();
}

class ExpandableTextState extends State<ExpandableText> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpanded,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: _isExpanded
            ? Text(widget.text, key: const ValueKey('expanded'))
            : Text(
                widget.text,
                key: const ValueKey('ellipsis'),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
      ),
    );
  }
}
