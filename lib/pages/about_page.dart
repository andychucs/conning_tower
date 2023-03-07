import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../generated/l10n.dart';

class AboutPage extends StatelessWidget {
  final PackageInfo packageInfo;

  const AboutPage({super.key, required this.packageInfo});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, bool innerBoxIsScrolled) {
        return [
          CupertinoSliverNavigationBar(
            largeTitle: Text(S.current.AboutButton.replaceAll('\n', '')),
          ),
        ];
      },
      body: SafeArea(
        top: false,
        bottom: false,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      height: 280,
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 200,
                              width: 200,
                              child: Image.asset('assets/images/logo.png'),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 200,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  AutoSizeText(
                                    packageInfo.appName,
                                    style: const TextStyle(fontSize: 36),
                                    maxLines: 1,
                                  ),
                                  Text(
                                    '${S.of(context).AboutVersion}: ${packageInfo.version}',
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  InkWell(
                                    onTap: () => launchUrl(Uri.parse(
                                        'https://github.com/andychucs/conning_tower')),
                                    child: const Text(
                                      'Github',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: CupertinoColors.link),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => launchUrl(Uri.parse(
                                        'https://github.com/andychucs/conning_tower/wiki')),
                                    child: const Text(
                                      'Wiki',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: CupertinoColors.link),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => launchUrl(Uri.parse(
                                        'https://twitter.com/conntower')),
                                    child: const Text(
                                      'Twitter',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: CupertinoColors.link),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                        S.of(context).AboutDescription,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 30,
                      child:
                          Text(S.of(context).AboutContributors, style: TextStyle(fontSize: 24)),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      height: 80,
                      child: Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: FadeInImage(
                                  height: 50,
                                  width: 50,
                                  fadeInDuration:
                                      const Duration(milliseconds: 500),
                                  fadeInCurve: Curves.easeInExpo,
                                  fadeOutCurve: Curves.easeOutExpo,
                                  placeholder: const AssetImage(
                                      "assets/images/defaultAvatarImage.png"),
                                  image: const NetworkImage(
                                      'https://avatars.githubusercontent.com/u/24852023?v=4'),
                                  imageErrorBuilder:
                                      (context, error, stackTrace) {
                                    return Container(
                                        child: Image.asset(
                                            "assets/images/defaultAvatarImage.png"));
                                  },
                                  fit: BoxFit.cover),
                              title: const Text('Andy Chu'),
                              subtitle: InkWell(
                                onTap: () => launchUrl(
                                    Uri.parse('https://github.com/andychucs/')),
                                child: const Text(
                                  '@andychucs',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: CupertinoColors.link),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      child: Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: FadeInImage(
                                  height: 50,
                                  width: 50,
                                  fadeInDuration:
                                      const Duration(milliseconds: 500),
                                  fadeInCurve: Curves.easeInExpo,
                                  fadeOutCurve: Curves.easeOutExpo,
                                  placeholder: const AssetImage(
                                      "assets/images/defaultAvatarImage.png"),
                                  image: const NetworkImage(
                                      'https://avatars.githubusercontent.com/u/91370281?v=4'),
                                  imageErrorBuilder:
                                      (context, error, stackTrace) {
                                    return Container(
                                        child: Image.asset(
                                            "assets/images/defaultAvatarImage.png"));
                                  },
                                  fit: BoxFit.cover),
                              title: const Text('Angus'),
                              subtitle: InkWell(
                                onTap: () => launchUrl(Uri.parse(
                                    'https://github.com/anguslaw63631')),
                                child: const Text(
                                  '@anguslaw63631',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: CupertinoColors.link),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      child: Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: FadeInImage(
                                  height: 50,
                                  width: 50,
                                  fadeInDuration:
                                      const Duration(milliseconds: 500),
                                  fadeInCurve: Curves.easeInExpo,
                                  fadeOutCurve: Curves.easeOutExpo,
                                  placeholder: const AssetImage(
                                      "assets/images/defaultAvatarImage.png"),
                                  image: const NetworkImage(
                                      'https://avatars.githubusercontent.com/u/59718878?v=4'),
                                  imageErrorBuilder:
                                      (context, error, stackTrace) {
                                    return Container(
                                        child: Image.asset(
                                            "assets/images/defaultAvatarImage.png"));
                                  },
                                  fit: BoxFit.cover),
                              title: const Text('lovetwice1012'),
                              subtitle: InkWell(
                                onTap: () => launchUrl(Uri.parse(
                                    'https://github.com/lovetwice1012')),
                                child: const Text(
                                  '@lovetwice1012',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: CupertinoColors.link),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
