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
        title: Text('Hacktobfest'),
      ),
      body: Center(
        child: Text('Widget Playground!'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        
        onPressed: () => {},
        )
    );
  }
}
