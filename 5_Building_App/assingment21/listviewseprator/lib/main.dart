import 'package:flutter/material.dart';
// import 'package:fluttter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State createState() => _ListViewState();
}

class _ListViewState extends State {
  List listPlr = [
    [
      "https://pbs.twimg.com/profile_images/1554342872111259650/oTKdsRJD_400x400.jpg",
      "https://static.toiimg.com/thumb/msid-104982122,width-400,resizemode-4/104982122.jpg",
      "https://kalingatv.com/wp-content/uploads/2023/12/yuvraj-singh.jpg",
    ],
    [
      "https://www.mpl.live/blog/wp-content/uploads/2022/01/Sachin-Tendulkar.jpg",
      "https://www.sportsadda.com/static-assets/waf-images/e2/04/a6/16-9/i1DaFmfjXW.jpg?v=1.6&w=420%20420w",
      "https://feeds.abplive.com/onecms/images/uploaded-images/2023/06/26/2c1a48b710e89ccb515738765356c540a6d06.jpg?impolicy=abp_cdn&imwidth=720",
    ],
    [
      "https://images.hindustantimes.com/rf/image_size_640x362/HT/p1/2014/08/27/Incoming/Pictures/1257209_Wallpaper2.jpg",
      "https://img.jagranjosh.com/images/2022/September/692022/compress_suresh_raina.jpg",
      "https://images.deccanchronicle.com/dc-Cover-lvl6rvrkod7uqvr9874ia9qjc7-20180225135203.Medi.jpeg",
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListViewSeprator"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children :[
          Text("Cricket",
          style: TextStyle(
            fontSize: 25,
          ),
          ),
          Container(
          height: 800,
            child:   ListView.separated(
          itemCount: listPlr.length,
          itemBuilder: (context, index) {
            return SizedBox(
              
              height: 700,
              child:
            ListView.builder(
              itemCount: listPlr[index].length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.network(listPlr[index][index]),
                );
              },
            )
            );
          },
          separatorBuilder: (context, index) {
            
            return Container(

              child:const  Text("T 20",
              style: TextStyle(fontSize: 25),
              ),
            );
          },
        )
        )
        ])
        );
  }
}
