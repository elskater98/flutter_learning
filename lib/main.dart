import 'package:flutter/material.dart';
import 'package:flutter_learning/main_functions.dart';

void main ()=> runApp(MaterialApp(
  home: Home()
));



class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.grey,
        padding: EdgeInsets.symmetric(),
        margin: EdgeInsets.all(30.0),
        child: Icon(Icons.mail,
        color: Colors.blue,),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('+'),
        onPressed: (){},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}


