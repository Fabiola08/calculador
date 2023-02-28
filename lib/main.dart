import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int _num1 = 0;
  int _num2 = 0;
  int _result = 0;

  void _incrementNum1() {
    setState(() {
      _num1++;
    });
  }

  void _decrementNum1() {
    setState(() {
      _num1--;
    });
  }

  void _incrementNum2() {
    setState(() {
      _num2++;
    });
  }

  void _decrementNum2() {
    setState(() {
      _num2--;
    });
  }

  void _multiply() {
    setState(() {
      _result = _num1 * _num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 110, 132),
      appBar: AppBar(
        title: const Text('Flutter Calculator'),
        backgroundColor: const Color.fromARGB(255, 12, 11, 13),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: _decrementNum1,
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  child: const Text('-'),
                ),
                const SizedBox(width: 16.0),
                Text(
                  '$_num1',
                  style: const TextStyle(fontSize: 24.0),
                ),
                const SizedBox(width: 16.0),
                FloatingActionButton(
                  onPressed: _incrementNum1,
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  child: const Text('+'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: _decrementNum2,
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  child: const Text('-'),
                ),
                const SizedBox(width: 20.0),
                Text(
                  '$_num2',
                  style: const TextStyle(fontSize: 24.0),
                ),
                const SizedBox(width: 16.0),
                FloatingActionButton(
                  onPressed: _incrementNum2,
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  child: const Text('+'),
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            FloatingActionButton(
              onPressed: _multiply,
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              child: const Text('Mult'),
            ),
            const SizedBox(height: 16.0),
            Text(
              '$_result',
              style: const TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

