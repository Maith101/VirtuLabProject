import 'package:flutter/material.dart';


class InstExperiments extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _InstExperiments();
  }
  
}

class _InstExperiments extends State<InstExperiments>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Experiments'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child:
            Text('experiments')
      ),
    );
  }
  
}