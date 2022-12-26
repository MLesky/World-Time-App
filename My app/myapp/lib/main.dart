import 'package:flutter/material.dart';

import 'quote.dart';
import 'package:myapp/quote_card.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote(text: 'Be yourself; everyone else is already taken', author: 'Osca Wilde'),
    Quote(text: 'I have nothing to declare except my genius', author: 'Osca Wilde'),
    Quote(text: 'The truth is rarely pure and never simple', author: 'Osca Wilde'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}
