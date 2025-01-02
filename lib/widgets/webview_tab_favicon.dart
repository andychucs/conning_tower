import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';

class WebViewTabFavicon extends StatelessWidget {
  final double? width;
  final double? height;
  final double maxWidth;
  final double maxHeight;
  final double minWidth;
  final double minHeight;
  final Uri? url;

  const WebViewTabFavicon(
      {super.key,
      this.url,
      this.width,
      this.height,
      this.maxWidth = double.infinity,
      this.maxHeight = double.infinity,
      this.minWidth = 0.0,
      this.minHeight = 0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: maxWidth,
          maxHeight: maxHeight,
          minHeight: minHeight,
          minWidth: minWidth),
      width: width,
      height: height,
      child: getImage(),
    );
  }

  Widget? getImage() {
    if (url != null) {
      if (url!.scheme == "data") {
        Uint8List bytes = const Base64Decoder()
            .convert(url.toString().replaceFirst("data:image/png;base64,", ""));
        return Container(
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              image: DecorationImage(
                image: MemoryImage(bytes),
                fit: BoxFit.fill,
              )),
        );
      }
      return Container(
        decoration: ShapeDecoration(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            image: DecorationImage(
                image: NetworkImage(url.toString()), fit: BoxFit.fill)),
      );
    }
    return getBrokenImageIcon();
  }

  Widget getBrokenImageIcon() {
    return Icon(
      CupertinoIcons.globe,
      size: width ?? height ?? maxWidth,
      color: CupertinoColors.inactiveGray,
    );
  }
}
