import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var isShowingCard = false;
  final TextEditingController name = TextEditingController();
  final TextEditingController comp = TextEditingController();
  final TextEditingController loction = TextEditingController();

  Widget showCard() {
    return Container(
      // height: 200,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.yellow, borderRadius: BorderRadius.circular(10)
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 161, 161, 161),
                  border: Border.all(
                    color: Colors.red,

                  )
                ),
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 100,
                  color: Colors.white,
                ),
              ),

              Container(
                
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [

                  Text(
                    "Name : ${name.text}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 255, 168, 37)                      
                    ),
                  ),
                  Text(
                    "Company Name : ${comp.text}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 255, 168, 37)                      
                    ),
                  ),
                  Text(
                    "Loction : ${loction.text}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 255, 168, 37)                      
                    ),
                  ),
                ]),
              )

            ],
          )
          
        ]),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 211, 78),
        title: Text(
          "Card Genreator",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: ListView(
         children: [
        Container(
          // height: 300,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 255, 211, 78)),
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Enter Name :",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      fillColor: Colors.amber,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    controller: name,
                    ),
                Text(
                  "Enter Company Name :",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      fillColor: Colors.amber,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    controller: comp,
                    ),
                Text(
                  "Location :",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      fillColor: Colors.amber,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    controller: loction,
                    ),
              ]),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              isShowingCard = true;
            });
          },
          child: Text(
            "Show Card",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
        ),
        (isShowingCard)?showCard():SizedBox()
      ]),
    );
  }
}
