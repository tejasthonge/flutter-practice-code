// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

void main() => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Quiz(),
    );
  }
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  bool isQuizScreen = true;
  // ignore: non_constant_identifier_names
  int QuestionIndex = 0;

  List<bool> btFlag = [false, false, false, false];

  // ignore: non_constant_identifier_names
  List<Map> QuestionList = [
    {
      "Question": "What is the purpose of the break statement in Java?",
      "Options": [
        "A. To exit a loop or switch statement.",
        "B. To skip the current iteration of a loop.",
        "C. To continue to the next case in a switch statement.",
        "D. To terminate the program.",
      ],
      "anaIndex": 3,
    },
    {
      "Question":
          "In Java, what is the default value of the elements in an array of integers?",
      "Options": [
        "A. 0",
        "B. 1",
        "C. -1",
        "D. null",
      ],
      "ansIndex": 0,
    },
    {
      "Question": "What is the return value of print function in dart ?",
      "Options": ["int", "float", "String", "bool"],
      "ansIndex": 2,
    },
    {
      "Question": "Waht are the 1 stands for ",
      "Options": ["on bit ", "true", "false", "off bit"],
      "ansIndex ": 1,
    }
  ];

  int correctIndex() {
    for (int i = 0; i < btFlag.length; i++) {
      
      if (btFlag[i] == true) {
        return i;
      }
    }
    return -1;
  }
  bool chekClik(){
    for(int i =0;i<btFlag.length;i++){
      
      if(btFlag[i] ==true){
        return true;
      }
     
    }
    return false;

  }

  int get qLen => QuestionList.length;
  Color btColor() => Colors.black;
  Color btBgColor(int selIndex) {
    if (QuestionList[QuestionIndex]["ansIndex"] == selIndex && selIndex >= 0) {
      return Colors.green;
    } else if (QuestionList[QuestionIndex]["ansIndex"] != selIndex &&
        selIndex >= 0) {
      return Colors.red;
    } else {
      return const Color.fromARGB(255, 114, 117, 129);
    }
  }

  Scaffold showQuizScreen() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // leading: Icon(Icons.menu),
        title: const Text(
          "Quiz App",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Text(
                "Questions : ",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "${QuestionIndex + 1} / $qLen",
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
                
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            // margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
            child: Text(
              QuestionList[QuestionIndex]["Question"],
              style: TextStyle(
                fontSize: 33,
                // color: Colors.amberAccent,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            height: 500,
            decoration: BoxDecoration(
                // color: Colors.yellow,
                // borderRadius:
                ),
            child: ListView.builder(
              itemCount: QuestionList[QuestionIndex]["Options"].length,
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    // : EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),

                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => btBgColor(correctIndex()),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          btFlag[index] = true;
                        });
                      },
                      child: Text(
                        QuestionList[QuestionIndex]["Options"][index],
                        style: TextStyle(fontSize: 23, color: btColor()),
                      ),
                    ));
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            
              QuestionIndex++;

            }
          
          );
        },
        child: Icon(
          Icons.forward,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return (isQuizScreen) ? showQuizScreen() : showMarkScreen();
    return showQuizScreen();
  }
}
