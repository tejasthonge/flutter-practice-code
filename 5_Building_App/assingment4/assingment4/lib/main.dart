import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo Boss',
      // theme:the,
      home:  MyHomePage(title :"Flutter Boss Home Page"),

    );
  }
}

class MyHomePage extends StatefulWidget{
  final String title;
  const MyHomePage({super.key ,required this.title});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
 
}

class _MyHomePageState extends State<MyHomePage>{
  int _counter =0;

  void _incrementCounter(){
    setState((){
      _counter++;
    });
  }
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("You have pushed the botton this many thimes"),
            Text(
              '$_counter',
              style:Theme.of(context).textTheme.headlineMedium,
            ),
          ],

        ), 
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'increment',
        child: const Icon(Icons.add),
        ),
    );
  }
}