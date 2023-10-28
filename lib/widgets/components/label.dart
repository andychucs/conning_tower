import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';

class AttributeLabel extends StatelessWidget {
  const AttributeLabel.vertical({
    super.key,
    required this.label,
    required this.value,
  }) : orientation = Axis.vertical;

  const AttributeLabel.horizontal({
    super.key,
    required this.label,
    required this.value,
  }) : orientation = Axis.horizontal;

  final String label;
  final String value;
  final Axis orientation;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: orientation,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        orientation == Axis.vertical
            ? AutoSizeText(
                label,
                maxFontSize: 10,
                minFontSize: 5,
                maxLines: 1,
              )
            : RotatedBox(
                quarterTurns: 1,
                child: AutoSizeText(
                  label,
                  maxFontSize: 10,
                  minFontSize: 5,
                  maxLines: 1,
                ),
              ),
        AutoSizeText(
          value,
          maxFontSize: 12,
          minFontSize: 5,
          maxLines: 1,
        )
      ],
    );
  }
}
