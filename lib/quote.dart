import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  final String quoteText;
  Quote(this.quoteText);
  @override
  Widget build(BuildContext ctx) {
    return Center(
        child: Container(
            margin: EdgeInsets.all(15),
            child: Text(
              this.quoteText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                fontStyle: FontStyle.italic
              ),
            )));
  }
}
