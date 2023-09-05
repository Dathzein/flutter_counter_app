import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  //No se declaran de esta manera
  // int clickCounter = 0;

  // se debe cambiar a stateful

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  // String clickLabel = 'Clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions'),
          centerTitle: true,
          // leading: ,
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            )
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${ clickCounter == 1 ? '' : 's'}',
              style: const TextStyle(
                fontSize: 25,
              ),
            )
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
        )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(icon: Icons.plus_one, 
            onPressed:(){
              setState(() {
                clickCounter++;
              });
            } ,),
            const SizedBox(height: 10,),
            CustomButton(icon: Icons.exposure_minus_1_outlined,
            onPressed:(){
              setState(() {
                if(clickCounter == 0 ) return;
                clickCounter--;
              });
            } ),
            const SizedBox(height: 10,),
            CustomButton(icon: Icons.refresh_outlined,
            onPressed:(){
              setState(() {
                clickCounter = 0;
              });
            } ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon, 
    this.onPressed,
    
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        shape: const StadiumBorder(),
        onPressed: onPressed,
        child: Icon(icon)
        );
  }
}
