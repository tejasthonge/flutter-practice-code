// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Assingment2 extends StatefulWidget {
  const Assingment2({super.key});

  @override
  State<Assingment2> createState() => _AssingmentState();
}

class _AssingmentState extends State<Assingment2> {
  bool box1color = false;
  bool box2color = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("color box"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box1color ? Colors.red : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        box1color = true;
                      });
                    },
                    child: const Text("box1 color"),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box2color ? Colors.blue : Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          box2color = true;
                        });
                      },
                      child: const Text("box2 color")
                      ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
