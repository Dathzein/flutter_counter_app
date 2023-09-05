import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  //No se declaran de esta manera
  // int clickCounter = 0;

  // se debe cambiar a stateful

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  
  int clickCounter = 0;
  String clickLabel = 'Clicks';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text('$clickCounter', style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100
              ),
              ),
               Text( clickLabel, style: const TextStyle(
                fontSize: 25,
              ),)
              //Posibles soluciones
              //  Text( 'Click${ clickCounter == 1 ? '' : 's'}', style: const TextStyle(
              //   fontSize: 25,
              // ),)
              //if(clickCounter == 1)
              //  Text( 'Click', style: const TextStyle(
              //   fontSize: 25,
              // ),)
              //if(clickCounter != 1)
              //  Text( 'Clicks', style: const TextStyle(
              //   fontSize: 25,
              // ),)
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            clickCounter++;
            clickCounter == 1 ? clickLabel ='Click': clickLabel = 'Clicks';
            setState((){});
          },
          child: const Icon( Icons.plus_one)
          ),
      );
  }
}