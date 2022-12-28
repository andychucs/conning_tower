import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  final PackageInfo packageInfo;

  const AboutPage({super.key, required this.packageInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      alignment: Alignment.center,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              pinned: true,
              expandedHeight: 250.0,
              flexibleSpace: Stack(
                children: [
                  Positioned.fill(
                      child: Image.network(
                    "https://user-images.githubusercontent.com/24852023/206192958-70954235-f287-4f5b-b4b4-0d2099e078f9.png",
                    fit: BoxFit.cover,
                  )),
                ],
              )),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 30,
                ),
                Container(
                  height: 50,
                  child: Text(
                    '${packageInfo.appName} ${packageInfo.version}',
                    style: const TextStyle(fontSize: 36),
                  ),
                ),
                Container(
                  height: 30,
                  child: const Text(
                    'Conning tower or Bridge is a cross-platform KanColle(艦隊これくしょん-艦これ-) browser.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  height: 30,
                ),
                Container(
                  height: 30,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          onTap: () => launchUrl(Uri.parse(
                              'https://github.com/andychucs/conning_tower')),
                          child: const Text(
                            'Github',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: CupertinoColors.link),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () => launchUrl(Uri.parse(
                              'https://github.com/andychucs/conning_tower/wiki')),
                          child: const Text(
                            'Wiki',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: CupertinoColors.link),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () => launchUrl(
                              Uri.parse('https://twitter.com/conntower')),
                          child: const Text(
                            'Twitter',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: CupertinoColors.link),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  child: Text(''),
                ),
                Container(
                  height: 30,
                  child: Text('Contributors',style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 80,
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: const Image(
                              image: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/24852023?v=4')),
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
                          leading: const Image(
                              image: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/91370281?v=4')),
                          title: const Text('Angus'),
                          subtitle: InkWell(
                            onTap: () => launchUrl(
                                Uri.parse('https://github.com/anguslaw63631')),
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
                          leading: const Image(
                              image: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/59718878?v=4')),
                          title: const Text('lovetwice1012'),
                          subtitle: InkWell(
                            onTap: () => launchUrl(
                                Uri.parse('https://github.com/lovetwice1012')),
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
        ],
      ),
    );
  }
}
