

/*
borderRadius:
To set the border to the Container we can use Border.all() , Border.symmetric() ,
Border(). We can set the border color, and border width using the Border class. To
give the border to a particular side we can use the Border().*/
import 'package:flutter/material.dart';

class BorderCon extends StatelessWidget {
  const BorderCon({super.key});

  @override
  Widget build(BuildContext context) {

  return Scaffold(

    appBar: AppBar(
      title: Text("Container styling"),
      centerTitle: true,
    ),

    body: Center(
      child: Container(
       
        height: 300,
        width: 300,
        // color: Colors.red, // of we use decoretion we cant use color property of container
        decoration:BoxDecoration(
          border: Border.all(
            color: Colors.yellow,
            width: 5,
          )

        ),
      ),
    ),
  );
}
}
