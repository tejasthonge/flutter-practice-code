import 'package:flutter/material.dart';


class Assingment3 extends StatelessWidget {
  const Assingment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Assingmet3") ,
        backgroundColor: Colors.blue,
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
                  child:Text("Button 1 ")
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
                  child:Text("Button 2 ")
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
                  child:Text("Button 3 ")
                  )
              ],
            )


          ],) 
        ),
    );

  }
}