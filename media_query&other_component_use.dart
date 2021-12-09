
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    ##height Using MediaQuery
    ##height Using MediaQuery
      
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('title')),
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: Center(
          child: Container(
            width: screenWidth / 3,
            height: screenHeight / 2,
            decoration: BoxDecoration(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
