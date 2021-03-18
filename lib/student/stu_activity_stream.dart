import 'package:flutter/material.dart';
import 'studentNavBar.dart';

class MainStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // StudentNavBar();
    return MaterialApp(title: 'Student', home: StudentNavBar());
  }
}

class ActivityStream extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ActivityStream();
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

class _ActivityStream extends State<ActivityStream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Activity Stream'),
          backgroundColor: Colors.deepPurple,
        ),
        body: new Container(
            child: Column(
          children: <Widget>[
            Align(
              //Listview
              alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 10, 5),
                  child: Text(
                    'Announcments',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
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
                        Text(
                          'Added Successfully!',
                          style:
                              TextStyle(height: 2, fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                  ));
                  return Card(
                      child: InkWell(
                    onTap: () {}, //When clicked
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.campaign_sharp,
                            size: 30,
                          ),
                          column,
                          Text('Date'),
                        ],
                      ),
                    ),
                  ));
                },
              ),
            ),
          ],
        )));
  }

  /*ListView _buildListView() {
    return ListView.builder(
        itemCount: courseNames.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {},
              title: Text(courseNames[index]),
              subtitle: Text(courseInstructors[index]),
              leading: Icon(Icons.alarm_on_sharp),
            ),
          );
        });
  }*/
}
