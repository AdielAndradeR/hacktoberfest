import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hacktobfest App',
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
        accentColor: Colors.green,
        
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Center(
        child: Text('Widget Playground!'),
      ),
    );
  }
}
