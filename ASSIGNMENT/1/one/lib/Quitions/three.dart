/*
3. Create a Screen that will display an AppBar. Add a title in the AppBar
the app bar must have a round rectangular border at the bottom.
 */

import 'package:flutter/material.dart';

class Three extends StatelessWidget {
  const Three({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40)
          )
        ),

        title: Text("Rounded Border",
          style:TextStyle(
            fontWeight:FontWeight.bold,
            color: Colors.white
          )
        ),

      )

    );
  }
}
