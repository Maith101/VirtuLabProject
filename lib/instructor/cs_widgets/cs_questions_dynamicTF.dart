import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CaseStudyQuestions extends StatefulWidget {
  final int index;
  CaseStudyQuestions(this.index);

  @override
  _CaseStudyQuestionsState createState() => _CaseStudyQuestionsState();
}

// this returns the text field that will be duplicated per click on the "add button"
class _CaseStudyQuestionsState extends State<CaseStudyQuestions> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: 'Enter question here'),
      validator: (v) {
        if (v.trim().isEmpty) return 'please enter a question';
        return null;
      },
    );
  }
}
