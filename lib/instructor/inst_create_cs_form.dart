import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cs_widgets/cs_questions_dynamicTF.dart';

class CaseStudyForm extends StatefulWidget {
  @override
  _CaseStudyFormState createState() => _CaseStudyFormState();
}

//this Widget takes the textfield in cs_questions_dynamicTF.dart and feeds it into
class _CaseStudyFormState extends State<CaseStudyForm> {
  @override
  // this list will be used to store case study questions
  static List<String> csQuestionList = [null];
  bool dateCheckBoxValue = false;

  // i still dun know how this works but i'll try and understand lol
  List<Widget> _getCaseStudyQuestion() {
    List<Widget> csQuestionTextfield = [];
    for (int i = 0; i < csQuestionList.length; i++) {
      csQuestionTextfield.add(
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            children: [
              Expanded(
                child: CaseStudyQuestions(i),
              ),
              SizedBox(
                width: 16,
              ),
              _addRemoveButton(i == csQuestionList.length - 1, i)
            ],
          ),
        ),
      );
    }
    return csQuestionTextfield;
  }

  //addRemoveButton
  Widget _addRemoveButton(bool add, int index) {
    return InkWell(
      onTap: () {
        if (add) {
          csQuestionList.insert(0, null);
        } else
          csQuestionList.removeAt(index);
        setState(() {});
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: (add) ? Colors.green : Colors.red,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon((add) ? Icons.add : Icons.remove, color: Colors.white),
      ),
    );
  }

// CASE STUDY FORM -- START --
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Form(
        child: ListView(
          children: <Widget>[
            Text(
              'Title:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Case Study Title',
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Description:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              height: 100,
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Write a short Description of the case study',
                ),
              ),
            ),
            Divider(),
            SizedBox(height: 15),
            Text(
              'Case Study:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Write the Case Study here',
                ),
              ),
            ),
            Divider(),
            SizedBox(height: 15),
            Text(
              'Questions:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            ..._getCaseStudyQuestion(),
            Divider(),
            SizedBox(height: 15),
            Text('Grade:', style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              height: 40,
              width: 10,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Grade out of',
                ),
              ),
            ),
            SizedBox(height: 15),
            Text('Deadline:', style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              child: Row(
                children: <Widget>[
                  Checkbox(
                    value: dateCheckBoxValue,
                    onChanged: (bool value) {
                      setState(() {
                        dateCheckBoxValue = value;
                      });
                    },
                  ),
                  Text('No Deadline'),
                ],
              ),
            ),
            //SizedBox(height: 15),
            Container(
              height: 40,
              child: TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  //may use date picker instead ..
                  labelText: 'datepicker ..?',
                ),
              ),
            ),
            SizedBox(height: 15),
            Divider(),
            SizedBox(height: 15),
            Container(
              child: Row(
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text('Submit'),
                    color: Colors.deepPurple,
                  ),
                  SizedBox(width: 15),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Save Draft'),
                    color: Colors.black26,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


