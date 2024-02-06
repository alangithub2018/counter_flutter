import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int cliclCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () {
            setState(() {
              cliclCounter++;
            });
          },
          ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$cliclCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),),
              Text('Click${cliclCounter > 1 ? "s" : ""}', style: const TextStyle(fontSize: 25),)
            ],
          ),
        ),
      );
  }
}