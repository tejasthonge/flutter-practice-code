/*
gradient:
Gradient refers to the transition between two or more colors.
We can give a gradient to the Container using LinearGradient(), SweepGradient(),
RadialGradient
In the Linear Gradient, we need to specify the List of colors to be used to display the
gradient.
We can also specify the position to place the color using the stops parameter.
The values in the stop parameter range between 0.0 to 1.0.
The values in the stops list must be in ascending order.
If a value in the [stops] list is less than an earlier value in the list, then its value
is assumed to equal the previous value.
*/



import 'package:flutter/material.dart';

class GradientCon extends StatelessWidget {
  const GradientCon({super.key});

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
          gradient: const LinearGradient(

            stops: [0.3,0.5],
            colors: [
              Colors.red,
              Colors.green,
            ]


          ),

        
        ),
      ),
    ),
  );
}
}
