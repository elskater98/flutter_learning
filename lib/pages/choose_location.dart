import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData(){
    Future.delayed(Duration(seconds: 3),(){

    });
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('init function ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter++;
          });
        },
        child: Text('$counter'),
      ),
    );
  }
}
