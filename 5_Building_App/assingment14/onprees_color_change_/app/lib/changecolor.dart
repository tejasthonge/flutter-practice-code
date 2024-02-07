import "package:flutter/material.dart";
// import "pakage:flutter/material.dart";

class ChangeColor extends StatefulWidget {
  const ChangeColor({super.key});

  @override
  State<ChangeColor> createState() => _ChangeColor();
}

class _ChangeColor extends State<ChangeColor> {
  int _count1 = 0;
  int _count2 = 0;
  Color setColorB1() {
    if (_count1 == 1) {
      return Colors.green;
    } else if (_count1 == 2) {
      // ignore: curly_braces_in_flow_control_structures

      return Colors.blue;
    } else {
      _count1 = 0;
      return Colors.red;
    }
  }

  Color setColorB2() {
    if (_count2 == 1) {
      return Colors.red;
    } else if (_count2 == 2) {
      return Colors.green;
    } else {
      _count2 = 0;
      return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("opPrees change color of conatier"),
        ),
        body: Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    height: 100,
                    width: 100,
                    color: setColorB1(),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _count1++;
                        });
                      },
                      child: Text("Box1"))
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: setColorB2(),
                    margin: EdgeInsets.only(bottom: 20),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() => _count2++);
                      },
                      child: Text("Box2"))
                ],
              )
            ],
          ),
        
      );
  }
}
