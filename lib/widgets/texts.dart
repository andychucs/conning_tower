import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Widget textLink(String url, String text) {
//   return InkWell(
//     onTap: () => launchUrl(Uri.parse(url)),
//     child: Text(
//       text,
//       style: const TextStyle(
//           decoration: TextDecoration.underline, color: CupertinoColors.link),
//     ),
//   );
// }

Widget textLink(String url, String text) {
  return GestureDetector(
    child: Text(
      text,
      style: const TextStyle(
          color: CupertinoColors.link, decoration: TextDecoration.underline),
    ),
    onTap: () => launchUrl(Uri.parse(url)),
  );
}
