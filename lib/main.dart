import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {      // const remove krna huta statefull me
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int x=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('My App')),
        ),
        body: SafeArea(

          child: Center(child: Text(x.toString(),style: TextStyle(fontSize: 50),)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x++;
            setState(() { //set state user interface ko refresh kr deta hy. can't use in state less widget

            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }


}

