import 'dart:convert' show json;

import 'package:conning_tower/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:yaml/yaml.dart';

class LibsInfo extends StatefulWidget {
  const LibsInfo({Key? key}) : super(key: key);

  @override
  LibsInfoState createState() => LibsInfoState();
}

class LibsInfoState extends State<LibsInfo> {
  Future<List<YamlMap>> _getYamlFilesList() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    final List<String> yamlFilePaths = manifestMap.keys
        .where((String key) => key.startsWith('assets/libs-info/'))
        .where((String key) => key.endsWith('.yaml'))
        .toList();
    final List<YamlMap> yamlFilesList = [];
    for (final String filePath in yamlFilePaths) {
      final String yamlString = await rootBundle.loadString(filePath);
      YamlMap yamlMap = loadYaml(yamlString);
      yamlFilesList.add(yamlMap);
    }
    return yamlFilesList;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<YamlMap>>(
      future: _getYamlFilesList(),
      builder: (BuildContext context, AsyncSnapshot<List<YamlMap>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            final List<YamlMap> yamlFilesList = snapshot.data!;
            return ListView.builder(
              itemCount: yamlFilesList.length,
              itemBuilder: (BuildContext context, int index) {
                final YamlMap yamlMap = yamlFilesList[index];
                return ListTile(
                  title: textLink(
                    yamlMap['homepage'],
                    yamlMap['name'],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Author: ${yamlMap['author']}'),
                      Text('License:\n${yamlMap['license']}'),
                    ],
                  ),
                );
              },
            );
          } else {
            return const Text('No data');
          }
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
