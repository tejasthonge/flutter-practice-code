/*
5. Create a Screen, in the center of the Screen display a Container with
rounded corners, give a specific color to the Container, the container
must have a shadow of color red.

 */

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/widgets.dart';

class Five extends StatelessWidget {
  const Five({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
        height: 300,
        width:300,
        decoration:const BoxDecoration(
         gradient: LinearGradient(colors: [
          Colors.red,
          Colors.green,
          Colors.blue,
         ]),
          borderRadius:BorderRadius.all(
            
            Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                blurRadius: 20,
                spreadRadius: 1,
                offset:Offset(0, 0)

              )
            ]

        )

      ),),
    );
  }
}
