import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int cliclCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Functions'),
        actions: [
          IconButton(
          icon: const Icon(Icons.refresh_rounded),
           onPressed: () { 
            setState(() {
              cliclCounter = 0;
            });
            },
           ),
        ],
      ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtom(
              icon: Icons.refresh_rounded,
              onPressed: () {
                cliclCounter = 0;
                setState(() {
                  
                });
              },
              ),
            const SizedBox(height: 10,),
            CustomButtom(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                if (cliclCounter == 0) return;
                cliclCounter--;
                setState(() {
                  
                });
              },
              ),
            const SizedBox( height: 10,),
            CustomButtom(
              icon: Icons.plus_one,
              onPressed: () {
                cliclCounter++;
                setState(() {
                  
                });
              },
              ),
        ],),
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

class CustomButtom extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}