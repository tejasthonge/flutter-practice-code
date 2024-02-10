import "package:flutter/material.dart";
import "package:quizapp/Data.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  bool isQueitionScreen = true;
  int qIndex = 0;

  // #creating the object of QuestionClass
  QuestionClass qObj = QuestionClass();
  //no of bt
  int bt1no = 1;
  int bt2no = 2;
  int bt3no = 3;
  int bt4no = 4;

  //buttons flag
  int b1Flag = -1;
  int b2Flag = -1;
  int b3Flag = -1;
  int b4Flag = -1;

  //botton collors
  //Button1
  Color getBt1Color() {
    if (b1Flag == -1) {
      return Colors.grey;
    } else if (b1Flag == qObj.questiosOptionList[qIndex]["answerIndex"]) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  Color getBt2Color() {
    if (b2Flag == -1) {
      return Colors.grey;
    } else if (b2Flag == qObj.questiosOptionList[qIndex]["answerIndex"]) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  Color getBt3Color() {
    if (b3Flag == -1) {
      return Colors.grey;
    } else if (b3Flag == qObj.questiosOptionList[qIndex]["answerIndex"]) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  Color getBt4Color() {
    if (b4Flag == -1) {
      return Colors.grey;
    } else if (b4Flag == qObj.questiosOptionList[qIndex]["answerIndex"]) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  //no of correct ans
  int markCount = 0;
  //Flag for the cheking the true or false of option when clikded

  Widget QuitionScreen() {
    if (isQueitionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              const SizedBox(width: 20),
              Text(
                "Questions: ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "${qIndex + 1}/${qObj.questiosOptionList.length}",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              qObj.questiosOptionList[qIndex]["Question"],
              // "Thisisea",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

//Options:
          Container(
              margin: EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Column(children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (bt1no ==
                            qObj.questiosOptionList[qIndex]["answerIndex"]) {
                          b1Flag = bt1no;
                          markCount++;
                        } else {
                          b1Flag = 0;
                        }
                      });
                    },
                    child: Text(
                      qObj.questiosOptionList[qIndex]["options"][0],
                      style: TextStyle(fontSize: 30),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(getBt1Color()),
                    ),
                  ),
                ),
              ])),
          Container(
              margin: EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Column(children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (bt2no ==
                            qObj.questiosOptionList[qIndex]["answerIndex"]) {
                          b2Flag = bt2no;
                          markCount++;
                        } else {
                          b2Flag = 0;
                        }
                      });
                    },
                    child: Text(
                      qObj.questiosOptionList[qIndex]["options"][1],
                      style: TextStyle(fontSize: 30),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(getBt2Color()),
                    ),
                  ),
                ),
              ])),
          Container(
              margin: EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Column(children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (bt3no ==
                            qObj.questiosOptionList[qIndex]["answerIndex"]) {
                          b3Flag = bt3no;
                          markCount++;
                        } else {
                          b3Flag = 0;
                        }
                      });
                    },
                    child: Text(
                      qObj.questiosOptionList[qIndex]["options"][2],
                      style: TextStyle(fontSize: 30),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(getBt3Color()),
                    ),
                  ),
                ),
              ])),
          Container(
              margin: EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Column(children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (bt4no ==
                            qObj.questiosOptionList[qIndex]["answerIndex"]) {
                          b4Flag = bt4no;
                          markCount++;
                        } else {
                          b4Flag = 0;
                        }
                      });
                    },
                    child: Text(
                      qObj.questiosOptionList[qIndex]["options"][3],
                      style: TextStyle(fontSize: 30),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(getBt4Color()),
                    ),
                  ),
                ),
              ])),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (qIndex < qObj.questiosOptionList.length - 1) {
                qIndex++;

                print(qIndex);
                print(qObj.questiosOptionList.length);
              }
              else if (qIndex == qObj.questiosOptionList.length-1 ) {
                isQueitionScreen = false;
                print(isQueitionScreen);

                print("ram ram");
              }
              
              b1Flag = -1;
              b2Flag = -1;
              b3Flag = -1;
              b4Flag = -1;
            });
          },
          child: Icon(
            Icons.keyboard_arrow_right,
            size: 40,
          ),
        ),
      );
    } else {
      return Scaffold(
          backgroundColor: Colors.green,
          body: Center(
            child: Container(
                width: double.infinity,
                height: 700,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Congratulations ",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Text(
                      "You Got ",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "$markCount Out of ${qObj.questiosOptionList.length} ",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 247, 255, 2),
                            // backgroundColor: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        setState(
                          () {
                            isQueitionScreen = true;
                            markCount = 0;
                            qIndex = 0;
                          },
                        );
                      },
                      child: Icon(
                        Icons.restart_alt,
                      ),
                    )
                  ],
                )),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return QuitionScreen();
  }
}
