import 'package:flutter/material.dart';

class Assingment3 extends StatefulWidget {
  const Assingment3({super.key});
  @override
  State<Assingment3> createState() => _Assingment3Sate();
}

class _Assingment3Sate extends State<Assingment3> {
  int? index = 0;

  final List<String> imglist = [
    "https://media.licdn.com/dms/image/D4D03AQEXsVHA2h-_vA/profile-displayphoto-shrink_400_400/0/1704811192015?e=1710979200&v=beta&t=28NYYQTtUt2ZXKZalnGDI38KOrz51UpTWxy1yJscm1Y",
    "https://beingselfish.in/wp-content/uploads/2023/09/jai-shree-ram-dp6.jpg",
    "https://blogger.googleusercontent.com/img/a/AVvXsEhdnS16Q1awOePmAma-ii_EidsbHHPB00TVekDty7izbwciL9kg975zLvKS-Ahrskh8d4H7gsIxYuSjsWm8_KWghoQ4ZTrYJsHCIqz0hHERiePAoEaiAa0CZPDnTSiXfrotdITs0JdLuQUZn5ohZwsmgC9PlzG67PXpCYuCEBRLSTbyGOSl2PPktisGCw",
  ];
  void ShowNexImage() {
    setState(() {
      index = index! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Disping the picture"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.network(
          imglist[index!],
          width: 300,
          height: 300,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: ShowNexImage,
          child: const Text("next"),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () => setState(() {
                  index = 0;
                }),
            child: const Text("Reset All"))
      ]),
    );
  }
}
