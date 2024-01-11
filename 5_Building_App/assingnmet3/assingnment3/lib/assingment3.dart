import 'package:flutter/material.dart';


class Assingment3 extends StatelessWidget {
  const Assingment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  //
      appBar: AppBar(
        
        title:const Text("Assingmet3" ) ,
        backgroundColor: Color.fromARGB(255, 239, 197, 11),
      ),
      body: SizedBox(
        height: double.infinity,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.orange,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: (){},
                  child:const Text("Button 1 ")
                  )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: (){},
                  child:const Text("Button 2 ")
                  )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: (){},
                  child:const Text("Button 3 ")
                  )
              ],
            )


          ],) 
        ),
    );

  }
}