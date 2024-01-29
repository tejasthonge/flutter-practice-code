import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IndianFlag extends StatefulWidget {
  const IndianFlag({super.key});
  @override
  State<IndianFlag> createState() => _IndianFlag();
}

class _IndianFlag extends State<IndianFlag> {
  // const _IndianFlag({super.key})
  int _count = -1;

  void changeColor() {
    setState(() {
      _count++;
      if (_count == 4) {
        _count = -1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bhart mata ki jay "),
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (_count >= 0)
                ? Container(
                    height: 600,
                    width: 10,
                    color: Colors.black,
                  )
                : Container(),
            (_count >= 1)
                ? Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      (_count >= 1)
                          ? Container(
                              margin: EdgeInsets.only(top: 100),
                              width: 300,
                              height: 60,
                              decoration: BoxDecoration(color: Colors.orange))
                          : Container(),
                      const SizedBox(
                        height: 5,
                      ),
                      (_count >= 1)
                          ? Stack(
                              children: [
                                (_count >= 1)
                                    ? Container(
                                        width: 300,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ))
                                    : Container(),
                                (_count >= 2)
                                    ? Container(
                                        width: 300,
                                        height: 60,
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.all(10),
                                        child: SvgPicture.asset(
                                          "lib/assets/svg/ashoka-chakra.svg",
                                          // height: 30,
                                          // width: 30,
                                        ),
                                      )
                                    : Container()
                              ],
                            )
                          : Stack(),
                      const SizedBox(
                        height: 2,
                      ),
                      (_count >= 3)
                          ? Container(
                              width: 300,
                              height: 60,
                              decoration: BoxDecoration(color: Colors.green),
                            )
                          : Container()
                    ],
                  )
                : Column(),
            Container(
                margin: const EdgeInsets.only(top: 700),
                child: ElevatedButton(
                  onPressed: () => changeColor(),
                  child: const Icon(Icons.add),
                ))
          ],
        ),
      ),
    );
  }
}
