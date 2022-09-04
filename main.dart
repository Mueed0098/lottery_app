import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Random random = Random();
  int  x = 0;
   // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Center(child: Text('Lottery winning number is 9')),
           const SizedBox(height: 20,),
            Container(
              height: 250,
              decoration:  BoxDecoration(
                color:x == 9 ? Colors.teal : Colors.grey.withOpacity(.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 9 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                const Icon(Icons.done_all, color:  Colors.green, size: 35,),
                const SizedBox(height: 18,),
                    Text('Congratulation you have won the lottery, your number is $x\n', textAlign: TextAlign.center,),
                  ],
                ) :
                Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            const  Icon(Icons.error, color:  Colors.red, size: 35,),
            const  SizedBox(height: 18,),
              Text('Better luck next time your number is $x\n try again', textAlign: TextAlign.center,),
              ],
            ),
              ),
            ),
          ],
        ),
        floatingActionButton:FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            print(x);
            setState(() {

            });

          },
          child: Icon(Icons.refresh),
        ),
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: const Center(
            child: Text(
              'Lottery App',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

        ),
      ),
    );
  }
}
