import 'package:first_app/text_custom.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();

class PlayDice extends StatefulWidget {
  const PlayDice({super.key});

  @override
  State<PlayDice> createState() => _PlayDiceState();
}

class _PlayDiceState extends State<PlayDice> {
  var diceRollNum = 1;

  void rollDice() {
    setState(() {
      diceRollNum =  random.nextInt(6) + 1; 
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$diceRollNum.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: rollDice,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.amber,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const CustomText("Play Dice"),
        )
      ],
    );
  }
}
