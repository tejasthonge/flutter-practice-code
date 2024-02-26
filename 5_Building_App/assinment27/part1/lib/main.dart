import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Containeer1(),
    );
  }
}

class Containeer1 extends StatelessWidget {
  const Containeer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: ClipOval(child: Image.network(
            "https://www.achieveriasclasses.com/wp-content/uploads/2021/06/Hindu.png",
            fit: BoxFit.contain,

          ),),
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 108, 255, 59),
                width: 2,
              ),
              shape: BoxShape.circle,
              color: Color.fromRGBO(234, 123, 88, 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 5,
                  // offset: Offset(10, 10),
                  blurRadius: 50, //by using the blurRadiis we adajuct the blurenass
                ),
              ]),
        ),
      ),
    );
  }
}
