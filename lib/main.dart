import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: UserId()));

class UserId extends StatefulWidget {
  @override
  _UserIdState createState() => _UserIdState();
}

class _UserIdState extends State<UserId> {

  int score = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('User ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            score+=1;
          });
        },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text('Name'.toUpperCase(),
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            SizedBox(height: 10.0),
            Text('Chun-Li',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 30.0),
            Text('Level'.toUpperCase(),
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
            SizedBox(height: 10.0),
            Text('$score',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 30.0),
            Row(
              children:<Widget> [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 30.0,
                ),
                Text(
                  'chun.lit@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
