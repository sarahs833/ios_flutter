import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Quote> quotes = [
    Quote(author: 'oscar wilde', text: 'hello wolrd'),
    Quote(author: 'sarah wang', text: 'coucou flutter'),
    Quote(author: 'jeremy zheng', text: 'im very strong')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awsome quote'),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
        ),
        body: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ));
  }
}
