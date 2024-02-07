import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final menuFlag = false;

  Widget showMenu() {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(3),
            height: 20,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(17),
            ),
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(66, 67, 57, 57),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded)),
        title: const Text(
          "daily.dev",
          style: TextStyle(
            color: Colors.white,
          ),

          // textDirection: T,
        ),
        centerTitle: true,
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("New Post"),
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black),
              iconSize: MaterialStatePropertyAll(10),
              padding: MaterialStatePropertyAll(
                  EdgeInsets.only(top: 2, bottom: 2, right: 10, left: 10)),
            ),
          )
        ],
      ),
      body: const Post(),
    );
  }
}

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  List<String> _postList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT26MP9f5YdlTfN-2pikGFAXSyfPfT7l-wdhA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT26MP9f5YdlTfN-2pikGFAXSyfPfT7l-wdhA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT26MP9f5YdlTfN-2pikGFAXSyfPfT7l-wdhA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT26MP9f5YdlTfN-2pikGFAXSyfPfT7l-wdhA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT26MP9f5YdlTfN-2pikGFAXSyfPfT7l-wdhA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT26MP9f5YdlTfN-2pikGFAXSyfPfT7l-wdhA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT26MP9f5YdlTfN-2pikGFAXSyfPfT7l-wdhA&usqp=CAU",
  ];
  List<String> _postDis = [
    "Crafting elegant code with meticulous precision, this programmer seamlessly weaves algorithms into intricate digital tapestries, bringing innovation to life in every line of code.",
    "A virtuoso of syntax, this coding maestro orchestrates harmonious symphonies of logic, transforming abstract concepts into functional and efficient software masterpieces.",
    "In the realm of programming, this adept code architect employs a symphony of languages to sculpt intuitive user interfaces, creating immersive digital experiences that resonate with seamless functionality.",
    "Crafting elegant code with meticulous precision, this programmer seamlessly weaves algorithms into intricate digital tapestries, bringing innovation to life in every line of code.",
    "Navigating the binary cosmos with finesse, this coding virtuoso engineers robust and scalable solutions, turning complex problems into elegant, streamlined algorithms.",
    "Crafting elegant code with meticulous precision, this programmer seamlessly weaves algorithms into intricate digital tapestries, bringing innovation to life in every line of code.",
    "Navigating the binary cosmos with finesse, this coding virtuoso engineers robust and scalable solutions, turning complex problems into elegant, streamlined algorithms.",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _postList.length,
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(109, 59, 48, 48),
            border: Border.all(
              color: const Color.fromARGB(255, 216, 196, 196),
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.account_tree_outlined,
                    color: Colors.white,
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text(
                          "Read Post",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.arrow_outward_sharp,
                          color: Colors.black,
                        )
                      ],
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.white)),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert_rounded,
                        color: Colors.white,
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                _postDis[index],
                style: TextStyle(
                  color: Colors.white,
                  // fontFamily:String.fromCharCode(10) ,

                  fontSize: 13,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Today ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  // Spacer(),
                  Text(
                    "10:34 PM",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                    10.0), // Set your desired border radius here
                child: Image.network(
                  // 'https://example.com/your_image_url.jpg', // Replace with your image URL
                  _postList[index],
                  width: 350.0, // Set your desired width
                  height: 200.0, // Set your desired height
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_circle_up_rounded,
                      // color: Colors.white,
                      color: Color.fromARGB(255, 124, 92, 92),

                      size: 20,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment_rounded,
                        // color: Colors.white,
                        color: Color.fromARGB(255, 124, 92, 92),

                        size: 20,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                          color: Color.fromARGB(255, 124, 92, 92),
                          size: 20,
                          Icons.screen_share_rounded))
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
