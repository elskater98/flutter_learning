import 'package:flutter_learning/classes/Quote.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600]
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style:TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[800]
              ) ,
            )
          ],
        ) ,
      ),
    );
  }
}
