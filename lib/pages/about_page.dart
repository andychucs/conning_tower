import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget{
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: const Text(
        'About',
        style: TextStyle(fontSize: 40),
        //TODO: project address, software version, contributions, some info from readme
      ),
    );
  }

}
