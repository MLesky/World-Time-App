import 'package:flutter/material.dart';

import 'package:myapp/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function()? delete;
  const QuoteCard({Key? key, required this.quote, this.delete}) : super(key: key);
//  const QuoteCard({ required this.quote });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              '${quote.text}',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              '${quote.author}',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[600],
              ),
            ),
            Divider(
              height: 20.0,
              thickness: 2.0,
              color: Colors.grey[500],
            ),
            FlatButton.icon(
                onPressed: delete,
                label: const Text('delete'),
                icon: const Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}