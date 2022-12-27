import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              delegate: SliverChildListDelegate([
                Container(
                  height: 30,
                  child: Text(''),
                ),
                Container(
                  height: 50,
                  child: Text(
                    'Conning tower 0.4.3',
                    style: TextStyle(fontSize: 36),
                  ),
                ),
                Container(
                  height: 30,
                  child: Text(
                    'Conning tower or Bridge is a cross-platform KanColle(艦隊これくしょん-艦これ-) browser.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  height: 30,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: InkWell(
                        onTap: () => launchUrl(Uri.parse(
                            'https://github.com/andychucs/conning_tower')),
                        child: Text(
                          'Github',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue),
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () => launchUrl(
                            Uri.parse('https://twitter.com/conntower')),
                        child: Text(
                          'Twitter',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue),
                        ),
                      )),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  child: Text(''),
                ),
                Container(
                  height: 30,
                  child: Text('Contributors'),
                ),
              ]),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                    height: 30,
                    child: InkWell(
                      onTap: () =>
                          launchUrl(Uri.parse('https://github.com/andychucs/')),
                      child: Text(
                        '@andychucs',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                      ),
                    )),
                Container(
                    height: 30,
                    child: InkWell(
                      onTap: () => launchUrl(
                          Uri.parse('https://github.com/anguslaw63631')),
                      child: Text(
                        '@anguslaw63631',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                      ),
                    )),
                Container(
                    height: 30,
                    child: InkWell(
                      onTap: () => launchUrl(
                          Uri.parse('https://github.com/lovetwice1012')),
                      child: Text(
                        '@lovetwice1012',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                      ),
                    )),
                Container(
                    height: 100,
                    child: InkWell(
                      onTap: () => launchUrl(Uri.parse('')),
                      child: Text(
                        '',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue),
                      ),
                    )),
              ]),
            ),
          ],
        ));
  }
}
