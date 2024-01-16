
import "package:flutter/material.dart" show BuildContext, Center, Scaffold, StatelessWidget, Text, Widget;

class CenterW extends StatelessWidget {
  const CenterW({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      //bellow are center widget
      body: Center(
        //poperty or named parametor of Center Widget
        heightFactor: 7,  //it set child widget loction form the top eadge of screen
        widthFactor: 15,  //it set child widget loction form left eadge of screen
        child: Text("this is an cetere text ")
        
        ),
    );
  }
}
