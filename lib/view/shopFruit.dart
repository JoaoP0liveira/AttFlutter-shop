import 'package:flutter/material.dart';
import 'package:minha_tela_basica/widgets/cardCar.dart';

class MyhomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Define o fundo da tela como branco
        scaffoldBackgroundColor: Colors.white,
      ),
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            MyCarCard(),
            MyCarCard(),
            MyCarCard(),
            MyCarCard(),
            MyCarCard(),
          ],
        ),
      ),
    );
  }
}
