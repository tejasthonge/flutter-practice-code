import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Netflix"),

        backgroundColor: Colors.red,
      ),

      body: ListView(
        scrollDirection: Axis.vertical,
        // mainAxisAlignment: MainAxisAlignment.center,
        
        
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text("Movis",
          style: TextStyle(
            fontSize: 30,
          ),
          ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(20),
              
              
              
                child:Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                children: [
                
                Image.network(
                  
                  "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    width: 300,
                  
                  // width:double.infinity,

                ),
                const SizedBox(
                  width: 10,
                ),
                
               
                Image.network(
                  // "	https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                  "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                  width: 300,

                  // width:double.infinity,

                ),
                const SizedBox(
                  width: 10,
                ),
                Image.network(
                  // "	https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                  "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                   width: 300,

                  // width:double.infinity,
                ),
                ],
              ),
              
            ),
            const Text("Series",
            style: TextStyle(
              fontSize: 35,
            ),
            ),
             const SizedBox(
              height: 10,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.network(
                    // "	https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                      "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                  // width:double.infinity,
                    width: 200,
                    height: 270,
                  ),
                  const SizedBox(
                  width: 10,
                ),
                  Image.network(
                    // "	https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                    "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                    width: 200,
                  // width:double.infinity,
                    // width: ,
                  ),
                  const SizedBox(
                  width: 10,
                ),
                  Image.network(
                    // "	https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                    "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                    width: 200,
                  // width:double.infinity,
                  ),
                 
                ],


                    

              ),

            ),
           const Text(
             "Most Popular",
             style :TextStyle(
               fontSize: 35,
             )
           ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:Row(
                children: [
              const SizedBox(
             height: 10,
           ),
           const SizedBox(
             height: 10,
           ),
         Image.network(
          //  "	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
           "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
          // "	https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
             height: 300,
             width: 200,
         ),
           const SizedBox(
             height: 10,
           ),
         Image.network(
           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
             height: 300,
             width: 200,
         ),
           const SizedBox(
             height: 10,
           ),
         Image.network(
           // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
           "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
         
             height: 300,
             width: 200,      
         ),     
              ]
              )
              ) ,          
//           ListView(
//             scrollDirection: Axis.horizontal,
//             children:[
//              
//         ]
// 
// 
//         ),
        ],
      ),
    );
  }
}
