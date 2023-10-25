import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0;

  //method
  void _incrementCounter() {
    //setState
    setState(() {
      _counter++;
    });
  }
  //UI

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
              "You push this button to see how the counter does work!!  Get ready for this"),
          Text(
            _counter.toString(),
            style: const TextStyle(fontSize: 40),
          ),
          ElevatedButton(
            onPressed: _incrementCounter,
            child: const Text("Push me"),
          ),
        ],
      ),
    );
  }
}
