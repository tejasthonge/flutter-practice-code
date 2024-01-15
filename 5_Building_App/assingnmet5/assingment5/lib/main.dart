import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Summit());
}

class Summit extends StatelessWidget {
  const Summit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text("Summit Dada"),
        ),
      ),
    );
  
  }
}
