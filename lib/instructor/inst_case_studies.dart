import 'package:flutter/material.dart';
//import 'package:virtulab/administrator/admin_main.dart';
import 'cs_widgets/cs_draft_list.dart';
import './cs_widgets/cs_list.dart';
import 'inst_create_cs.dart';

class InstCaseStudies extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InstCaseStudies();
  }
}

class _InstCaseStudies extends State<InstCaseStudies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.yellow[700],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => CreateCaseStudy(),
              ),
            );
          },
          icon: Icon(Icons.add),
          label: Text('New'),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Case Studies'),
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                child: CsDraftList(),
              ),
              SizedBox(height: 12), //just to add space between
              Flexible(
                child: CsList(),
              ),
            ],
          ),
        ));
  }
}
