import 'dart:math';

import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class SingleQuestionModel {
  final String? question;
  final List<String>? options;
  final int? ansIndex;

  const SingleQuestionModel({this.question, this.options, this.ansIndex});
}

class _QuizAppState extends State<QuizApp> {
  bool isQuestionScreen = true;
  int qIndex = 0;

  List<SingleQuestionModel> quizList = const [
    SingleQuestionModel(
      question: "Who is considered the supreme god in Hinduism?",
      options: ["a) Vishnu", "b) Shiva", "c) Brahma", "d) Krishna"],
      ansIndex: 1,
    ),
    SingleQuestionModel(
      question:
          "What is the sacred text that contains the philosophical and spiritual teachings of Hinduism?",
      options: ["a) Vedas", "b) Upanishads", "c) Bhagavad Gita", "d) Ramayana"],
      ansIndex: 2,
    ),
    SingleQuestionModel(
      question:
          "In Hindu mythology, who is the goddess of wealth and prosperity?",
      options: ["a) Saraswati", "b) Lakshmi", "c) Durga", "d) Kali"],
      ansIndex: 1,
    ),
    SingleQuestionModel(
      question:
          "Which festival celebrates the victory of light over darkness and good over evil?",
      options: ["a) Holi", "b) Diwali", "c) Navratri", "d) Raksha Bandhan"],
      ansIndex: 1,
    ),
    SingleQuestionModel(
      question: "What is the concept of reincarnation known as in Hinduism?",
      options: ["a) Nirvana", "b) Moksha", "c) Samsara", "d) Karma"],
      ansIndex: 2,
    ),
  ];

  //sellected option

  int selOption = -1;
  int markCount = 0;

  //to check the ans

  Color? checkAns(int bNo) {
    if (selOption != -1) {
      if (bNo == selOption) {
        if (bNo == quizList[qIndex].ansIndex) {
          markCount++;
          return Colors.green;
        } else {
          return Colors.red;
        }
      } else if (bNo == quizList[qIndex].ansIndex) {
        markCount++;

        return Colors.green;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  void validAns() {
    if (selOption != -1 && qIndex < quizList.length - 1) {
      qIndex++;
      selOption = -1;
    } else {
      isQuestionScreen = false;
    }
  }

  Scaffold showScreen() {
    if (isQuestionScreen == true) {
      // int bNo = 3;
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Question : ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${qIndex + 1}/${quizList.length}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Text(
                "${quizList[qIndex].question}",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          // style: ButtonStyle(fixedSize: MaterialStateProperty.all(S)),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(checkAns(1)),
                          ),
                          onPressed: () {
                            setState(() {
                              selOption = 1;
                            });
                          },
                          child: Text(
                            "${quizList[qIndex].options?[0]}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w800),
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          // style: ButtonStyle(fixedSize: MaterialStateProperty.all(S)),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(checkAns(2)),
                          ),
                          onPressed: () {
                            setState(() {
                              selOption = 2;
                            });
                          },
                          child: Text(
                            "${quizList[qIndex].options?[1]}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w800),
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          // style: ButtonStyle(fixedSize: MaterialStateProperty.all(S)),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(checkAns(3)),
                          ),
                          onPressed: () {
                            setState(() {
                              selOption = 3;
                            });
                          },
                          child: Text(
                            "${quizList[qIndex].options?[2]}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w800),
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                          // style: ButtonStyle(fixedSize: MaterialStateProperty.all(S)),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(checkAns(4)),
                          ),
                          onPressed: () {
                            setState(() {
                              selOption = 4;
                            });
                          },
                          child: Text(
                            "${quizList[qIndex].options?[3]}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w800),
                          )),
                    ),
                  ]),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              validAns();
            });
          },
          child: Icon(
            Icons.arrow_forward_ios,
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 180,
              ),
              Image.network(
                "https://img.freepik.com/premium-vector/winner-trophy-cup-with-ribbon-confetti_51486-122.jpg",
                height: 300,
                width: 300,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You have Got",
                style: TextStyle(),
              ),
              Text(
                "$markCount/${quizList.length}",
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.w700,
                  color: Colors.green,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    qIndex = 0;
                    isQuestionScreen = true;
                    markCount = 0;
                  });
                },
                child: Icon(
                  Icons.restart_alt,
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return showScreen();
  }
}
