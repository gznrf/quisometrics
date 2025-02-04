import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Крестики-нолики'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> buttonTexts = List.filled(9, '[]');
  String gameResult = '';

  void cleanPlayground() {
    setState(() {
      for (int i = 0; i < buttonTexts.length; i++){
        buttonTexts[i] = '[]';
      }
      gameResult = 'Игра началась!';
    });
  }

  void changeButtonText(int index) {

    setState(() {
      checkWinner();
      if (buttonTexts[index] == '[]') {
        buttonTexts[index] = 'X';
        machineMove();
      }
    });
  }

  void checkWinner(){
    if (buttonTexts[1] == 'O' && buttonTexts[2] == 'O'&& buttonTexts[3]  == 'O'){
      setState(() {
        gameResult = 'Комп выиграл';
      });
    }else if (buttonTexts[1] == 'X' && buttonTexts[2] == 'X'&& buttonTexts[3]  == 'X'){
      setState(() {
        gameResult = 'Игрок выиграл';
      });
    }else if (buttonTexts[4] == 'O' && buttonTexts[5] == 'O'&& buttonTexts[6]  == 'O'){
      setState(() {
        gameResult = 'Комп выиграл';
      });
    }else if(buttonTexts[4] == 'X' && buttonTexts[5] == 'X'&& buttonTexts[6]  == 'X'){
      setState(() {
        gameResult = 'Игрок выиграл';
      });
    }else if(buttonTexts[7] == 'O' && buttonTexts[8] == 'O'&& buttonTexts[9]  == 'O'){
      setState(() {
        gameResult = 'Комп выиграл';
      });
    }else if (buttonTexts[7] == 'X' && buttonTexts[8] == 'X'&& buttonTexts[9]  == 'X'){
      setState(() {
        gameResult = 'Игрок выиграл';
      });
    } else if (buttonTexts[1] == 'O' && buttonTexts[4] == 'O'&& buttonTexts[7]  == 'O'){
      setState(() {
        gameResult = 'Комп выиграл';
      });
    }else if (buttonTexts[1] == 'X' && buttonTexts[4] == 'X'&& buttonTexts[7]  == 'X'){
      setState(() {
        gameResult = 'Игрок выиграл';
      });
    }else if(buttonTexts[2] == 'O' && buttonTexts[5] == 'O'&& buttonTexts[8]  == 'O'){
      setState(() {
        gameResult = 'Комп выиграл';
      });
    }else if (buttonTexts[2] == 'X' && buttonTexts[5] == 'X'&& buttonTexts[8]  == 'X'){
      setState(() {
        gameResult = 'Игрок выиграл';
      });
    }else if (buttonTexts[3] == 'O' && buttonTexts[6] == 'O'&& buttonTexts[9]  == 'O'){
      setState(() {
        gameResult = 'Комп выиграл';
      });
    }else if (buttonTexts[3] == 'X' && buttonTexts[6] == 'X'&& buttonTexts[9]  == 'X'){
      setState(() {
        gameResult = 'Игрок выиграл';
      });
    }else if(buttonTexts[1] == 'O' && buttonTexts[5] == 'O'&& buttonTexts[9]  == 'O'){
      setState(() {
        gameResult = 'Комп выиграл';
      });
    }else if (buttonTexts[1] == 'X' && buttonTexts[5] == 'X'&& buttonTexts[9]  == 'X'){
      setState(() {
        gameResult = 'Игрок выиграл';
      });
    }else if (buttonTexts[3] == 'O' && buttonTexts[5] == 'O'&& buttonTexts[7]  == 'O'){
      setState(() {
        gameResult = 'комп выиграл';
      });
    }else if (buttonTexts[3] == 'X' && buttonTexts[5] == 'X'&& buttonTexts[7]  == 'X'){
      setState(() {
        gameResult = 'Игрок выиграл';
      });
    }
    else if(buttonTexts[1] != '[]' && buttonTexts[2] != '[]' && buttonTexts[3] != '[]' && buttonTexts[4] != '[]' && buttonTexts[5] != '[]' && buttonTexts[6] != '[]' && buttonTexts[7] != '[]' && buttonTexts[8] != '[]' && buttonTexts[9] != '[]'){
      setState(() {
        gameResult = 'Ничья';
      });
    }
  }

  void machineMove() {
    checkWinner();

    var rng = Random();
    int machineIndex;

    do {
      machineIndex = rng.nextInt(9);
    } while (buttonTexts[machineIndex] != '[]');

    setState(() {
      buttonTexts[machineIndex] = 'O';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(gameResult),
            TextButton(onPressed: cleanPlayground, child: Text('Начать сначала!')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return TicTacToeButton(
                  buttonText: buttonTexts[index],
                  onPressed: () => changeButtonText(index),
                );
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return TicTacToeButton(
                  buttonText: buttonTexts[index + 3],
                  onPressed: () => changeButtonText(index + 3),
                );
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return TicTacToeButton(
                  buttonText: buttonTexts[index + 6],
                  onPressed: () => changeButtonText(index + 6),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class TicTacToeButton extends StatelessWidget {
  const TicTacToeButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 34),
      ),
    );
  }
}
