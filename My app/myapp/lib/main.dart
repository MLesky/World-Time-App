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
  String errorMessage = '';
  late TextEditingController quoteInputField;

  @override
  void initState() {
    super.initState();
    quoteInputField = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.0),
              child: Column(
              children: [
                  TextField(
                    controller: quoteInputField,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'quote',
                    ),
                    onChanged: (e){
                      if(quoteInputField.text.isEmpty){
                        setState((){
                          errorMessage = "Quote cannot be empty";
                        });
                      } else {
                        setState((){
                          errorMessage = "";
                        });
                      }
                    },
                  ),
                if(errorMessage.isNotEmpty)
                Text(
                  errorMessage,
                  style: TextStyle(
                    color: Colors.red[800],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                const SizedBox(height: 5.0,),
                ElevatedButton.icon(
                    onPressed: (){
                      String newQuoteText = quoteInputField.text;
                      if(newQuoteText.isNotEmpty) {
                        Quote newQuote = Quote(text: newQuoteText, author: 'Mbah Lesky');
                        setState(() {
                          quotes.add(newQuote);
                        });
                        print("\"$newQuoteText\" by Mbah Lesky has been added");
                      }
                    },
                    icon: const Icon(Icons.add),
                    label: const Text('add'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: quotes.map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                    print("\"${quote.text}\" by ${quote.author} has been deleted");
                  }
              )).toList(),
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    quoteInputField.dispose();
    super.dispose();
  }
}
