import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _Portfolio();
}

class _Portfolio extends State<Portfolio> {
  int _count = -1;

  void showBlocks() {
    setState(() {
      _count++;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Portfolio"),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          children: [
            
              (_count>=0)?
              Text("Name: Tejas Rajendra Thonge"):Text(""),

              (_count>=0)?
              Image.network(
                "https://twitter.com/tejas_thonge/photo",
                height: 300,
                width: 250,
              ):Container(),
          (_count>=1)?
            const SizedBox(
              height: 20,
            ):Container(),
            (_count>=1)?
            const Text("Colloge: Sinhgad Institute of techonology and sience"):Container(),

            (_count>=1)?
            Image.network(
              "https://www.stesracing.org/assets/img/Sinhgad%20Institutes%20custom.png",
              height: 300,
              width: 250,
            ):Container(),
            (_count>=2)?
            const SizedBox(height: 20,):Container(),
            (_count>=2)?
            const Text("Dream comp: Apple"):Container(),
            (_count>=2)?
            Image.network(
              "data:image/jpeg;base64,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",
              height: 300,
              width: 250,
            ):Container(),

            Container(
              height: 30,
              width: 20,
              child: ElevatedButton(
                onPressed: () => showBlocks(),
                child: Text("Next"),

              ),
            )
          ],
        )
      )
    );
  }
}
