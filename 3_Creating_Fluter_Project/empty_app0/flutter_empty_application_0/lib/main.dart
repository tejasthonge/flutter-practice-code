import 'package:flutter/material.dart';

void main() {
  runApp(
      const MainApp()); //calling the runApp method and passing the MainApp constructor
  // runApp(Widget app)  it is in building. dart file it requre Widget type arrgumet
}

class MainApp extends StatelessWidget {
  const MainApp(
      {super.key}); // it call due to the we call runApp function and pass MainApp constructor
  // chelck the parent class constructor
  @override // it overrid form the SatatelessWidget class chek the method as wee hoo call theis build
  Widget build(BuildContext context) {
    Object add = this.hashCode;
    print("in (build) of [mainApp] $add");
    return const MaterialApp(
        //we have to must return MateialApp for Android and means MatarialApp hase parent Widget indirectly

        );
  }
}
