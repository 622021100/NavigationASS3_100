// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// ignore: unused_import
import 'Thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _stdId = TextEditingController();
  final TextEditingController _stdName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('กรอกข้อมูลนิสิต'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('กรอกข้อมูลนิสิต'),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 14),
                  studentId(),
                  const SizedBox(height: 14),
                  studentName(),
                  const SizedBox(height: 14),
                  button(context),
                ],
              ),
            ),
            // button1(context),
            // button2(context),
          ],
        ),
      ),
    );
  }

  Padding button(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonTheme(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('หน้าแรก'),
            ),
          ),
          ButtonTheme(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print(_stdId.text);
                  print(_stdName.text);
                }
                setState(
                  () {
                    var route = MaterialPageRoute(
                      builder: (context) => ThirdPage(
                        stdName: _stdName.text,
                        stdId: _stdId.text,
                      ),
                    );
                    Navigator.push(context, route);
                  },
                );
              },
              child: const Text('ยืนยัน'),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox studentName() {
    return SizedBox(
      width: 280,
      child: TextFormField(
        controller: _stdName,
        validator: (value) {
          if (value!.isEmpty) {
            return 'โปรดกรอกข้อมูลให้ครบถ้วน';
          }
          return null;
        },
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          label: Text('ชื่อนิสิต'),
          prefixIcon: Icon(Icons.person),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(32),
              ),
              borderSide: BorderSide(
                color: Colors.redAccent,
                width: 2,
              )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
            borderSide: BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }

  SizedBox studentId() {
    return SizedBox(
      width: 280,
      child: TextFormField(
        controller: _stdId,
        validator: (value) {
          if (value!.isEmpty) {
            return 'โปรดกรอกข้อมูลให้ครบถ้วน';
          }
          return null;
        },
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          label: Text('รหัสนิสิต'),
          prefixIcon: Icon(Icons.assignment_ind_rounded),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(32),
              ),
              borderSide: BorderSide(
                color: Colors.redAccent,
                width: 2,
              )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
            borderSide: BorderSide(
              color: Colors.blue,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32),
            ),
            borderSide: BorderSide(
              color: Colors.red,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }

  // ButtonTheme button2(BuildContext context) {
  //   return ButtonTheme(
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
  //     child: RaisedButton(
  //       onPressed: () {
  //         var route = MaterialPageRoute(
  //           builder: (context) => ThirdPage(
  //             stdName: _stdName.text,
  //             stdId: _stdId.text,
  //           ),
  //         );
  //         Navigator.push(context, route);
  //       },
  //       child: const Text('ยืนยัน'),
  //     ),
  //   );
  // }

  // ButtonTheme button1(BuildContext context) {
  //   return ButtonTheme(
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
  //     child: RaisedButton(
  //       onPressed: () {
  //         Navigator.pop(context);
  //       },
  //       child: const Text('หน้าแรก'),
  //     ),
  //   );
  // }
}
