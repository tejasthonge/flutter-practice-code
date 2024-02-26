import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State createState() => _Sreen1State();
}

class _Sreen1State extends State {
  List<Color> colors = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 232, 1),
  ];

  List todoList = [
    {
      "date": "24 feb 2024",
      "image": "lib/assets/images/cardLogo.png",
      "task": "This is an the task",
      "discription":
          "This is an discrpriton of the task of the that say deatail about the task we can change it further",
    },
    
  ];

  final TextEditingController date = TextEditingController();
  final TextEditingController task = TextEditingController();
  final TextEditingController disc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(2, 167, 177, 1),
        title: Text("to-do-List",
            style: GoogleFonts.quicksand(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            )),
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(15),
              height: 112,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      blurRadius: 20,
                      spreadRadius: 1,
                      offset: Offset(0, 10))
                ],
                color: colors[index % colors.length],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: 52,
                        height: 52,
                        // margin:
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.07),
                                blurRadius: 10,
                              )
                            ]),

                        child: ClipOval(
                            child: Image.asset(
                          todoList[index]["image"],
                        )),
                      ),
                      Text(
                        todoList[index]["date"],
                        style: GoogleFonts.quicksand(
                            color: Color.fromRGBO(132, 132, 132, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          todoList[index]["task"],
                          style: GoogleFonts.quicksand(
                              fontSize: 20, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.clip,
                          maxLines: 1,
                        ),
                      ),
                      Container(
                        width: 275,
                        // height: 60,
                        child: Text(
                          todoList[index]["discription"],
                          style: GoogleFonts.quicksand(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(84, 84, 84, 1)),
                          // overflow:TextOverflow.clip,
                          // softWrap: false,
                          maxLines: 3,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Spacer(),
                          SizedBox(
                            width: 220,
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.edit_outlined,
                              size: 20,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                            onTap: () {},
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                              child: Icon(
                                Icons.delete_outline,
                                size: 20,
                                color: Color.fromRGBO(0, 139, 148, 1),
                              ),
                              onTap: () {
                                delTask(index);
                              }),
                          SizedBox(
                            width: 5,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(2, 167, 177, 1),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 450,
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Text(
                      "Create Task",
                      style: GoogleFonts.quicksand(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Title",
                              style: GoogleFonts.quicksand(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextField(
                              // cursorHeight: 30,
                              decoration: InputDecoration(
                                  hintText: "enter the title",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        // color: Colors.yellow,
                                        width: 3),
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              controller: task,
                            ),
                            Text(
                              "Description",
                              style: GoogleFonts.quicksand(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 60,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "enter the discription ",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                controller: disc,
                              ),
                            ),
                            Text(
                              "Date",
                              style: GoogleFonts.quicksand(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextField(
                              keyboardType: TextInputType.datetime,
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.date_range_outlined),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              controller: date,
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                    // Size.fromHeight(12),
                                    Size(400, 33),
                                  ),
                                  backgroundColor:
                                      MaterialStateColor.resolveWith((states) =>
                                          Color.fromRGBO(0, 139, 148, 1))),
                              onPressed: () {
                                addTask(date.text, task.text, disc.text);
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Submit",
                                style: GoogleFonts.quicksand(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              );
            },
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  void addTask(String d, String t, String di) {
    Map newTask = {
      "date": d,
      "image": "lib/assets/images/cardLogo.png",
      "task": t,
      "discription": di
    };
    todoList.add(newTask);
    setState(() {});
  }

  void delTask(int index) {
    todoList.removeAt(index);
    setState(() {});
  }
}
