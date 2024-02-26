import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LifeCycale(),
    );
  }
}

class LifeCycale extends StatefulWidget {
  const LifeCycale({super.key});

  @override
  State createState() => LifeCycaleState();
}

class LifeCycaleState extends State {
  static bool isWidgetActive = true;

  @override
  void initState() {
    super.initState();
    print("In Init State");
  }

  //@override
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("In DidChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("In Build ");
    print(isWidgetActive);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WidgetLifeCycale",
        ),
      ),
      body: Center(
          child: Column(
        children: [
          (isWidgetActive)?DemoWidget1():DemoWidget2(),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                print("in setState");
                isWidgetActive = !isWidgetActive;
              });
            },
            child: Icon(Icons.flip),
          )
        ],
      )),
    );
  }

  @override
  void didUpdateWidget(covariant StatefulWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("Did Update Widget");
  }
//
//   @override
//   void setState(VoidCallback fn) {
//     // TODO: implement setState
//     super.setState(() {});
//
//     print("In setState method");
//     build(context);
//   }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("In dectivate method");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("In  Dispose ");
  }
}

class DemoWidget1 extends StatelessWidget {
  const DemoWidget1({super.key});

   @override
     Widget build(BuildContext context) {
  
      return Container(
        width: 300,
        height: 300,
        color: Colors.yellow,
      );
    
    
  }
}
class DemoWidget2 extends StatelessWidget{

  const DemoWidget2({super.key});
  @override
  Widget build(BuildContext context) {
    
      return Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(150),
            boxShadow: [
              const BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20,
                  spreadRadius: 50,
                  offset: Offset(0, 5)),
              const BoxShadow(
                  color: Colors.yellow,
                  spreadRadius: 30,
                  blurRadius: 20,
                  offset: Offset(1, 6))
            ]),
      );
  }
}
