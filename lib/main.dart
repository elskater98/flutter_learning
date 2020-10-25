import 'package:flutter/material.dart';
import 'package:flutter_learning/classes/Quote.dart';
void main() => runApp(MaterialApp(
    home:QuoteList()
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    'Be yourself;',
    'I have a pen',
    'Nothing to do.'
  ];

  List<Quote> _quotes = [
    Quote('Hi','Steve',true),
    Quote('Bye', 'Jobs', false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
          children: /*quotes.map((item){
            return Text(item);
          }).toList(),*/
        _quotes.map((e) {return Text(e.text+' '+e.author);}).toList()

      ),
    );
  }
}
