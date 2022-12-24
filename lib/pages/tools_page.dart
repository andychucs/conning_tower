import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToolsPage extends StatelessWidget{
  const ToolsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      alignment: Alignment.center,
      child: const Text(
        'Tool',
        style: TextStyle(fontSize: 40),
      ),
      //TODO: move clearCache .. to here
    );
  }

}
