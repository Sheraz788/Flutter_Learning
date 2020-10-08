import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 15
              ),
            ),
            SizedBox(height: 10),
            Text(
                quote.author
            ),
            SizedBox(height: 15,),
            FlatButton.icon(onPressed: delete, icon: Icon(Icons.delete), label: Text('delete'))
          ],
        ),
      ),
    );
  }
}