import 'dart:ffi';

import 'package:flutter/material.dart';

class LearnFlutterWidget extends StatefulWidget {
  const LearnFlutterWidget({super.key});

  @override
  State<LearnFlutterWidget> createState() => _LearnFlutterWidgetState();
}

class _LearnFlutterWidgetState extends State<LearnFlutterWidget> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            isSwitch
                ? Image.asset(
                    height: 500,
                    'images/einstein.jpg',
                  )
                : Image.network(
                    height: 500,
                    'https://images.saatchiart.com/saatchi/1686070/art/8013121/7080359-HSC00001-6.jpg'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    debugPrint('flutter.dev');
                  },
                  child: const Text('FLUTTER.DEV'),
                ),
                OutlinedButton(
                  onPressed: () {
                    debugPrint('Github');
                  },
                  child: Row(children: const [
                    Icon(Icons.local_fire_department),
                    Text('Github')
                  ]),
                ),
                TextButton(
                  onPressed: () {
                    debugPrint('twitter');
                  },
                  child: Row(children: const [
                    Icon(Icons.people_alt_outlined),
                    Text('Twitter')
                  ]),
                ),
              ],
            ),
            Switch(
              value: isSwitch,
              onChanged: (newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
