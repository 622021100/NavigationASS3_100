// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:it_routing/pages/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.app_registration_rounded,
            size: 30,
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'หน้าแรก',
              style: TextStyle(fontSize: 20),
            ),
            ButtonTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
              child: RaisedButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  );
                  Navigator.push(context, route);
                },
                child: const Text(
                  'ถัดไป',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
