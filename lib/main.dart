import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random= Random();
  int x = 6;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Lottery App')),
        ),
        body: x==4 ? Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              'Lottery winning  number is: 4',
              style: TextStyle(fontSize: 20, color: Colors.black),
            )),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(0.4),
              borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.done,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(height: 10),
                    Text('Congratulation, your number is $x.\n You won !',textAlign: TextAlign.center,),
                  ],
                )

              ),
            ),
          ],
        ) :
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
                  'Lottery winning  number is: 5',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
            SizedBox(height: 20),
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.4),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error,
                        color: Colors.red,
                        size: 30,
                      ),
                      SizedBox(height: 10),
                      Text('Better Luck Next Time your number is $x.\n Try Again !',textAlign: TextAlign.center,),
                    ],
                  )

              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x=random.nextInt(5);

            setState(() {

            });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
