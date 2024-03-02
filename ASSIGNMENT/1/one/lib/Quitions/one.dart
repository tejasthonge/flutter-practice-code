/*
1. Create an AppBar, give an Icon at the start of the appbar, give a title
in the middle, and at the end add an Icon.
 */

import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        leading:Icon(
          Icons.stacked_bar_chart_outlined,

        ),
        title: Text(
          "JayShreeRam",

        ),
        centerTitle:true,
        actions:[
          Icon(
            Icons.expand_circle_down_outlined
          )
        ],
      )
    );
  }
}
