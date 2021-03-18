import 'package:flutter/material.dart';

class StudentCoursePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StudentCoursePage();
  }
}

final coursePage = [
  'Experiments',
  'Case Studies',
]; //Temp Data

final courseIcons = [
  Icons.device_thermostat,
  Icons.description_sharp,
]; //Temp Data

class _StudentCoursePage extends State<StudentCoursePage> {
  @override
  Widget build(BuildContext context) {
    return
    //  WillPopScope(
    //   onWillPop: () async => onBackPressed(context , StudentCourses()), //testing
    // child: 
    Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Course Name'), //Temp data
        backgroundColor: Colors.deepPurple,
      ),
      body: new Container(
        child: Column(children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 10, 5),
              child: Text(
                'Course Contents',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: coursePage.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: ListTile(
                        onTap: () {},
                        title: Text(coursePage[index]),
                        leading: Icon(
                          courseIcons[index],
                          color: Colors.black,
                          size: 30,
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ));
                  }))
        ]),
      ),
    // ),
    );
  }
}
