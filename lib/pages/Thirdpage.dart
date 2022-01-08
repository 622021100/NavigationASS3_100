// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:it_routing/pages/secondpage.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key, this.stdName, this.stdId}) : super(key: key);

  final String? stdName;
  final String? stdId;

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'รหัสนิสิต :' + widget.stdId!,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'ชื่อนิสิต :' + widget.stdName!,
              style: const TextStyle(fontSize: 20),
            ),
            ButtonTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
              child: RaisedButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  );
                  Navigator.pop(context, route);
                },
                child: const Text('กลับ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
