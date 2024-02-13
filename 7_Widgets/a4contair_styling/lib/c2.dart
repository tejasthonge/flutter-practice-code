/*
padding:-
The padding adds space around the child. It is used to create space or margins around
other widgets.
We can add padding in horizontal and vertical directions using EdgeInsets.symmetric().
*/

import 'package:flutter/material.dart';

class PaddingCon extends StatelessWidget {
  const PaddingCon({super.key});

  @override
  Widget build(BuildContext context) {

  return Scaffold(

    appBar: AppBar(
      title: Text("Container styling"),
      centerTitle: true,
    ),

    body: Center(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
          
        ),
        height: 200,
        width: 200,
        color: Colors.red,
      ),
    ),
  );
}
}
