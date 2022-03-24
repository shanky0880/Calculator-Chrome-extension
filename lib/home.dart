import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 20,
              child: Image.network(
                'https://cdn2.iconfinder.com/data/icons/ios7-inspired-mac-icon-set/512/Calculator_512.png',
              ),
            ),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Calculator',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ))
          ],
        ),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SimpleCalculator(
        value: 0.0,
        theme: const CalculatorThemeData(
          expressionColor: Colors.black,
          operatorColor: Colors.red,
          //  commandColor: Colors.green,
          numColor: Colors.white,
          borderColor: Colors.black,
          displayColor: Colors.black,
          displayStyle: const TextStyle(fontSize: 80, color: Colors.yellow),
          /*...*/
        ),
      ),
    );
  }
}
