import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text('Home Page'),
                centerTitle: true,
                leading: Icon(Icons.message),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.add_a_photo))
                ],
              ),
              body: Container(
                height: 200,
                width: 500,
                decoration: BoxDecoration(color: Colors.deepOrange),
                child: Center(
                  child: Text(
                    'Qayum Hasan',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
        ));
  }
}
