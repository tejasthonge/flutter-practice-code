/*
2. Create an AppBar give a color of your choice to the AppBar and then
add an icon at the start of the AppBar and 3 icons at the end of the
AppBar.
 */

import "package:flutter/material.dart";

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.deepOrange,
        leading:Icon(Icons.insert_emoticon_rounded),

        // title: Text("BharatMataKiJai"),
        centerTitle:true,
        actions:[
          Icon(Icons.filter_1),
          Icon(Icons.filter_2),
          Icon(Icons.filter_3),

        ]
      ),

    );
  }
}
