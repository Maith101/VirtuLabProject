import 'package:flutter/material.dart';
import 'stu_course_page.dart';
import 'package:virtulab/student/stu_course_register.dart';

// import './studentNavBar.dart';

class StudentCourses extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StudentCourses();
  }
}

final courseNames = [
  'Course 1',
  'Course 2',
  'Course 3',
  'Course 4'
]; //Temp Data
final courseInstructors = [
  'Instructor 1',
  'Instructor 2',
  'Instructor 3',
  'Instructor 4'
]; //Temp Data

class _StudentCourses extends State<StudentCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Courses'),
          backgroundColor: Colors.deepPurple,
        ),
        body: new Container(
            child: Column(children: <Widget>[
          Align(
            //Listview
            alignment: Alignment.centerLeft,
            child: Container(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 10, 5),
              child: Text(
                'My Courses',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )),
          ),
          Expanded(
            child: new ListView.builder(
              itemCount: courseNames.length,
              itemBuilder: (context, index) {
                Widget column = Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //Multiple texts in a widget
                      Text(
                        courseNames[index],
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            height: 2,
                            color: Colors.deepPurple),
                      ),
                      Text(courseInstructors[index]),
                    ],
                  ),
                ));
                return Card(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => StudentCoursePage(),
                      ),
                    );
                  }, // Navigate when tapped
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.auto_stories,
                        ),
                        column,
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  ),
                ));
              },
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        FloatingActionButton.extended(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  StuCourseRegister(),
                            ),
                          ), //When pressed
                          icon: Icon(Icons.add),
                          label: Text(
                            "Add New Course",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          backgroundColor: Colors.amber,
                        ),
                      ],
                    ))),
          ),
        ])));
  }
}
