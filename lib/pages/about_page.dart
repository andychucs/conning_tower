import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey,
        alignment: Alignment.center,
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              pinned: true,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Conning Tower' + '!!!Version Num!!!'),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate(
                [
                  Container(
                    height: 30,
                    color: Colors.grey,
                    child: Text('Conning tower or Bridge is a cross-platform KanColle(艦隊これくしょん-艦これ-) browser.'),
                  ),

                  Container(
                    height: 30,
                    color: Colors.grey,
                    child: Text('Github link, icon, twitter etc'),
                  ),

                  Container(
                    height: 30,
                    color: Colors.grey,
                    child: Text('Contributors'),
                  ),

                ]
            ),

            ),
            SliverFixedExtentList(
              itemExtent: 50.0,
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container( //Contributor list
                    alignment: Alignment.center,
                    color: Colors.lightGreen,
                    child: Text('List Item $index'),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
