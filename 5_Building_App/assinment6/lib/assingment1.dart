import 'package:flutter/material.dart';

class Assingment1 extends StatefulWidget {
  const Assingment1({super.key});

  @override
  State<Assingment1> createState() => _Assingment1State ();
}

class _Assingment1State extends State<Assingment1> {
  int _count = 0;
  void _printTableValue() {
    setState(() {
      _count +=2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title : const Text("Table of 2"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("click the bottun to print the table"),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_count"
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: _printTableValue,
             child: const Text("print")
             )
          ],
        ),
      ),

    );
  }
}
