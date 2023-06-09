import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x=6;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Lottery App')),
        ),
        body: Column (
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Lottery winning  number is: $x',
            style: TextStyle( fontSize: 20,color: Colors.green),
            )),
          Container(
            height: 60,
            width: 40,
            color: Colors.green,
            child: Text('zafar'),
          ),
          ],
           ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('tap');
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}

