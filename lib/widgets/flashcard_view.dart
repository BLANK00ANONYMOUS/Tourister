import 'package:flutter/material.dart';
//import 'package:flip_card/flip_card.dart';

class FlashCardView extends StatelessWidget {
  final String? text;

  FlashCardView({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Center(
        child: Text(
          text!,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
