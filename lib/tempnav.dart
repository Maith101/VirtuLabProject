import 'package:flutter/material.dart';

import 'student/stu_activity_stream.dart';
import 'instructor/inst_report.dart';
import 'administrator/admin_main.dart';

// ...........................THIS PAGE WILL BE DELETED LATER

const TextStyle _textStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

ButtonStyle _buttonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
);

class TempNaV extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TempNaV();
  }
}

class _TempNaV extends State<TempNaV> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'THIS IS ONLY TEMPORARY \n where do you want to go?',
          style: _textStyle,
        ),
        SizedBox(
          width: 250,
          height: 75,
          child: ElevatedButton(
            style: _buttonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => MainStudent(),
                ),
              );
            },
            child: Text(
              'Student',
              style: _textStyle,
            ),
          ),
        ),
        SizedBox(
          width: 250,
          height: 75,
          child: ElevatedButton(
            style: _buttonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => MainInstructor(),
                ),
              );
            },
            child: Text(
              'Instructor',
              style: _textStyle,
            ),
          ),
        ),
        SizedBox(
          width: 250,
          height: 75,
          child: ElevatedButton(
            style: _buttonStyle,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => MainAdmin(),
                ),
              );
            },
            child: Text(
              'Admin',
              style: _textStyle,
            ),
          ),
        ),
      ],
    );
  }
}
