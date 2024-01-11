import 'package:flutter/material.dart';

class Assingment2 extends StatelessWidget {
  const Assingment2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.limeAccent,
          centerTitle: true,
          title: const Text("this appbar title"),
          bottom: AppBar(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            backgroundColor: const Color.fromARGB(255, 86, 92, 26),
            centerTitle: true,
            title: const Text("this appbar title of : bottom"),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        body: SizedBox(
          
          //IT HAS THE PARAMETHOR IT IS H. W. CHILD THEM WE CAN ADD
          height:BorderSide.strokeAlignOutside, //IT CONCLUDE ALL THE REAMAIN SCREEN EXEPT THE APPBAR
          child: Column(
            
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 370,
                child: Container(
                  color: Colors.deepPurpleAccent,
                  child: Container(
                    alignment: Alignment.center,
                    color: const Color.fromARGB(255, 234, 233, 233),
                    height: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      
                      children: [
                        Container(
                          margin: const EdgeInsets.all(12),
                          width: 100,
                          color: const Color.fromARGB(255, 110, 221, 41),
                        ),
                        Container(
                           margin:const EdgeInsets.all(12),
                          width: 100,
                          color:const Color.fromARGB(255, 82, 25, 225),
                        ),
                        Container(
                           margin:const EdgeInsets.all(12),
                          width: 100,
                          color: const Color.fromARGB(255, 225, 25, 25),
                        ),
                    ]),
                  ),
                ),
              ),
              

              SizedBox(
                height: 200,
                child:Container(
                  
                  padding: const EdgeInsets.all(10),
                  color: const Color.fromARGB(255, 88, 103, 189),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children:[
                      Container(
                        width: 90,
                        height: 90,
                        color: Colors.deepOrangeAccent
                      ),

                      ElevatedButton(
                        onPressed: (){},
                        child: const Text("Button"),
                      ),
                       Container(
                        width: 90,
                        height: 90,
                        color: Colors.deepOrangeAccent
                      ),
                      ]
                    )
                  ),

                ),


              
            ],
          ),
        ),
      ),
    );
  }
}
