import 'package:flutter/material.dart';

class QuoteButton extends StatelessWidget {
  final Function handlePressed;
  QuoteButton(this.handlePressed);
  @override
  Widget build(BuildContext ctx) {
    return Container(
      margin: EdgeInsets.only(top: 20),
        child: RaisedButton(
      onPressed: handlePressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.speaker_notes, size: 32, color: Colors.white,),
      ),
      color: Colors.red,
    ));
  }
}
