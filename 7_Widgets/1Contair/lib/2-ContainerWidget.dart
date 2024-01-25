import 'package:flutter/material.dart';

class ContainerW extends StatelessWidget {
  const ContainerW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(   //ceter is used for containr set in center just it
        child: Container(
          //#following ar named parammtors or propertis of container

           alignment: Alignment.center, //it set the child allimet insid the container 
          // alignment: Alignment.centerLeft,

          //if we not set the height and width the it will set it by requre hight and with for its child
          height: 100, //it set the height and width of container
          width: 100,  //

          // color: const Color.fromARGB(255, 190, 206, 214),  //it set the bc color of the containar

          // constraints:const BoxConstraints.expand(), //it git all emty space thet incress the width and height  in this code it cover all the width and heigt in the scaffold
          // constraints: BoxConstraints(minWidth: 100,maxWidth: 150),
          //means constranits provid minimun and maximum dimetions, we either add the constrans or width and higth not the both 

          padding: const EdgeInsets.all(18),    //inside 
          margin: const EdgeInsets.all(20),//out side

          // transform :scale rotetiron all source of the diimetions
          transform: Matrix4.rotationZ(0.5), //pass the angle in readians 0.5 is aprometily equals to 30 dgree


          //decoration : we can set the borders ,shadow,shaps
          decoration:  BoxDecoration(
            // color:Colors.orange,  //if we use in color property we cant use sprate color property that is container 
            border: Border.all(  
              color: Colors.indigo, //borderr color 
              width: 2.0, //width of the  border
              style:BorderStyle.solid,
              
            ),

            // borderRadius: const BorderRadius.all(
            //   Radius.circular(20.0)
            // ),

            boxShadow:const [  //we have to provide the lis of following
              BoxShadow(
                color: Color.fromARGB(255, 219, 255, 147),
                blurRadius: 4.0,
                spreadRadius: 8.0,
              )
            ],
            gradient: const LinearGradient( //by using this gradient we can set the collor combinertion to the background
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Colors.blue, //left side 
                // Colors.lightBlue,//mid
                Colors.white,
                Colors.pink,//right side
              ]
            ),
            shape: BoxShape.circle, //to us the shape we have to remove the borderredus we any predife or own shape also

          ),

          child: const Text("This is container"), //by using this child we can set the  child of conatier

        ),
      )
    );
  }
}
