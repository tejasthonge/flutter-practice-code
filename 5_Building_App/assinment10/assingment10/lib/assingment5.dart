import 'package:flutter/material.dart';

class Assigment5 extends StatefulWidget {
  const Assigment5({super.key});

  @override
  State<Assigment5> createState() => _Assinment5State();
}

class _Assinment5State extends State<Assigment5> {
  bool _isPost1Liked = false;
  bool _isPost2Liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        actions: const [
          Icon(
            Icons.hdr_plus_rounded,
            color: Colors.black,
            
          ),
          Icon(
           Icons.chat,
           color: Colors.black,
          ),

        ],
      ),
      body: ListView(
        //it is by defoalt scrollable
        children: [
          //it has childeren but sinlgechild scroleveis has only child
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color.fromARGB(255, 192, 192, 192),
                padding: const EdgeInsets.all(10),
                child: Image.network(
                  "https://wallpapers.com/images/high/shree-ram-hanuman-digital-art-4i7v9duakaomeru5.webp",
                  width: double.infinity,
                  // height: 300,
                ),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _isPost1Liked = !_isPost1Liked;
                        });
                      },
                      icon: _isPost1Liked
                          ? const Icon(
                              Icons.favorite_rounded,
                              color: Colors.red,
                            )
                          : const Icon(
                              Icons.favorite_border_outlined,
                            )),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_outline,
                      )),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color.fromARGB(255, 192, 192, 192),
                padding: const EdgeInsets.all(10),
                child: Image.network(
                  "https://wallpapers.com/images/high/shree-ram-hanuman-digital-art-4i7v9duakaomeru5.webp",
                  width: double.infinity,
                  // height: 300,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isPost2Liked  == !_isPost2Liked ;
                      });
                    },

                    icon:_isPost2Liked  
                    ? const Icon(
                      Icons.favorite_rounded,
                      color: Colors.red,
                    )
                    :const Icon(
                      Icons.favorite_border_outlined,
                    ),

                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        // alignment: Alignment.centerRight,  ///nothing is changing use spacer
                        Icons.bookmark_outline,
                      )),
                ],
              ),
            ],
          )
        ],
      ),

//     body: SingleChildScrollView(
//       child:Column(
//       children: [
//         Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//
//           children: [
//
//           Container(
//             color: const Color.fromARGB(255, 192, 192, 192),
//             padding:const  EdgeInsets.all(10),
//             child:Image.network(
//                 "https://wallpapers.com/images/high/shree-ram-hanuman-digital-art-4i7v9duakaomeru5.webp",
//                 width: double.infinity,
//                 // height: 300,
//               ),
//             ),
//             Row(
//               children: [
//                 IconButton(
//                   onPressed: (){},
//                   icon: const Icon(
//                     Icons.favorite_border_outlined,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: (){},
//                   icon:const Icon(
//                   Icons.comment_outlined,
//                   ),
//                 ),
//                 IconButton(onPressed: (){},
//                  icon: const  Icon(
//                   Icons.send,
//                  ),
//                  ),
//               ],
//             ),
//           ],
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//
//           children: [
//
//           Container(
//             color: const Color.fromARGB(255, 192, 192, 192),
//             padding:const  EdgeInsets.all(10),
//             child:Image.network(
//                 "https://wallpapers.com/images/high/shree-ram-hanuman-digital-art-4i7v9duakaomeru5.webp",
//                 width: double.infinity,
//                 // height: 300,
//               ),
//             ),
//             Row(
//               children: [
//                 IconButton(
//                   onPressed: (){},
//                   icon: const Icon(
//                     Icons.favorite_border_outlined,
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: (){},
//                   icon:const Icon(
//                   Icons.comment_outlined,
//                   ),
//                 ),
//                 IconButton(onPressed: (){},
//                  icon: const  Icon(
//                   Icons.send,
//                  ),
//                  ),
//               ],
//             ),
//           ],
//         )
//       ],
//     ),
// )
    );
  }
}
