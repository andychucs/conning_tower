import 'package:auto_size_text/auto_size_text.dart';
import 'package:conning_tower/widgets/cupertino_grouped_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PortInfo extends ConsumerStatefulWidget {
  const PortInfo({super.key});

  @override
  ConsumerState createState() => _PortInfoState();
}

class _PortInfoState extends ConsumerState<PortInfo> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          sliver: SliverGrid.count(
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 2,
            childAspectRatio: 1.618,
            children: <Widget>[
              InfoBox(
                top: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 25,
                    height: 25,
                    color: Color(0xFF068D46),
                  ),
                ),
                bottom: AutoSizeText(
                  "20000000",
                  style: TextStyle(fontSize: 30),
                  minFontSize: 18,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              InfoBox(
                top: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 25,
                    height: 25,
                    color: Color(0xFF7D9A06),
                  ),
                ),
                bottom: AutoSizeText(
                  "20000000",
                  style: TextStyle(fontSize: 30),
                  minFontSize: 18,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              InfoBox(
                top: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 25,
                    height: 25,
                    color: Color(0xFFBEBEBE),
                  ),
                ),
                bottom: AutoSizeText(
                  "20000000",
                  style: TextStyle(fontSize: 30),
                  minFontSize: 18,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              InfoBox(
                top: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 25,
                    height: 25,
                    color: Color(0xFFFFCF4F),
                  ),
                ),
                bottom: AutoSizeText(
                  "20000000",
                  style: TextStyle(fontSize: 30),
                  minFontSize: 18,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              InfoBox(
                top: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 25,
                    height: 25,
                    color: Color(0xFF7BEE1D),
                  ),
                ),
                bottom: AutoSizeText(
                  "20000000",
                  style: TextStyle(fontSize: 30),
                  minFontSize: 18,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              InfoBox(
                top: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 25,
                    height: 25,
                    color: Color(0xFFE3E3E3),
                  ),
                ),
                bottom: AutoSizeText(
                  "20000000",
                  style: TextStyle(fontSize: 30),
                  minFontSize: 18,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              InfoBox(
                top: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 25,
                    height: 25,
                    color: Color(0xFF1DEEB6),
                  ),
                ),
                bottom: AutoSizeText(
                  "20000000",
                  style: TextStyle(fontSize: 30),
                  minFontSize: 18,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox({
    super.key,
    required this.top,
    required this.bottom,
  });
  final Widget top;
  final Widget bottom;

  @override
  Widget build(BuildContext context) {
    return CupertinoGroupedSection(
      padding: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: top,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: bottom,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
