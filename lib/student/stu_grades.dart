import 'package:flutter/material.dart';
// import './studentNavBar.dart';


class StudentGrades extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StudentGrades();
  }
}

class _StudentGrades extends State<StudentGrades> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Grades'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(

        child: 
        Text('stateful grades')
      ),
    );
  }
}
