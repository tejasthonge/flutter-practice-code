import 'package:flutter/material.dart';

class Layout1 extends StatelessWidget {
  const Layout1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar") ,
        ),
        backgroundColor:const Color.fromARGB(255, 103, 255, 222),
        body: SizedBox(
          height: BorderSide.strokeAlignOutside,
          child: Column(

            children: [
              Container(
                padding:const EdgeInsets.only(left: 10,bottom: 10),
                height: 150,
                width: double.infinity,
                
                color: const Color.fromARGB(255, 131, 214, 255),
                child:Row(
                  
                  crossAxisAlignment:CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      const CircleAvatar(     
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      radius: 50,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: Color.fromARGB(255, 255, 177, 51),
                      ),
                    ),
                     Container(
                      padding:const EdgeInsets.all(5),
                      child: const Column(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                           Text("Tejas Thonge",style:TextStyle(fontSize: 28),),
                           Text("Hi i am flutter app deveoper",style:TextStyle(fontSize: 15),),
                        ],
                      ),
                    ), 
                  ],
                ),
              ),
           
            ],
          ),
        ),
      ),
    );

    //end build method
  }
}
