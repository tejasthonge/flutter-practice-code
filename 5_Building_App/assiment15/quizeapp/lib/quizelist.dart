import 'package:flutter/material.dart';

class Quize1 extends StatefulWidget {
  const Quize1({super.key});
  @override
  State<Quize1> createState() => _Quize1();
}

class _Quize1 extends State<Quize1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quize App UI "),
      ),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Quize No : 1",
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Way use dart for flutter ?"),
          const SizedBox(
            height: 10,
          ),
          Container(
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              ElevatedButton(onPressed: () {}, child: Text("Oprtion 1")),
              ElevatedButton(onPressed: () {}, child: Text("Oprtion 1")),
              ElevatedButton(onPressed: () {}, child: Text("Oprtion 1")),
              ElevatedButton(onPressed: () {}, child: Text("Oprtion 1"))
            ]),
          )
        ],
      ),
    );
  }
}
