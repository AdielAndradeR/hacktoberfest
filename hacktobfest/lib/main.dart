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


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<String> _jokes = [
    "First astronaut: Hey, I can’t find any milk for my coffee. Second astronaut: In space, no one can. Here, use cream.",
    "I got gas today for 1.39.Unfortunately it was at Taco Bell."
    
  ];

  int cont = 0;

   void _changeJoke(){
     if(cont == 1) {

      setState(() {
        cont = 0;
      });
     }else {
        setState(() {
       cont = 1;
    });
     }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hacktobfest'),
      ),
      body: Center(
        child: Text(_jokes[cont]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        
        onPressed: () => _changeJoke(),
        )
    );
  }
}
