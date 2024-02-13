

/*It takes a List of BoxShadow. Using this we can display the shadow behind the
container. We can specify the color, offset(Position) and blurRadius in the BoxShadow.
Positive x/y offsets will shift the shadow to the right and down, while

negative offsets shift the shadow to the left and up.
The first item in the list will represent the last layer of shadow.*/
import 'package:flutter/material.dart';

class BoxShadowCon extends StatelessWidget {
  const BoxShadowCon({super.key});

  @override
  Widget build(BuildContext context) {

  return Scaffold(

    appBar: AppBar(
      title: Text("Container styling"),
      centerTitle: true,
    ),

    body: Center(
      child: Container(
       
        height: 200,
        width: 200,
        // color: Colors.red, // of we use decoretion we cant use color property of container
        decoration:BoxDecoration(
          
            color: Colors.amber,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
            color: Colors.blue,
            width: 5,
          ),

          //BoxShadow
          boxShadow:const [
            BoxShadow(
              color: Colors.purple,
              offset:Offset(30, 30),
              blurRadius: 8
            ),
            BoxShadow(
              color: Colors.red,
              offset: Offset(20, 20),
              blurRadius: 8
            ),
            BoxShadow(
              color: Colors.green,
              offset: Offset(10, 10),
              blurRadius: 8
            )

          ],

        
        ),
      ),
    ),
  );
}
}
