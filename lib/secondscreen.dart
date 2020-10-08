import 'package:flutter/material.dart';
import 'package:flutter_app/quote.dart';
import 'quote_card.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  List<Quote> quotes = [
    Quote(text: 'Be yourself, everyone else is already taken', author: 'John'),
    Quote(text: 'I have nothing to declare except my genius', author: 'Morgan'),
    Quote(text: 'The truth is rarely pure and never simple', author: 'Buttler')
  ];


  // //method in flutter
  // Widget quoteTemplate(quote){
  //
  //   return ;
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            Column(
              children: quotes.map((q) {
                //function as argument
                return QuoteCard(quote: q, delete : () {
                  setState(() {
                    quotes.remove(q);
                  });
                });
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("Go Back"),
                ),
                RaisedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/loading');
                  },
                  child: Text("Load Next Page"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
