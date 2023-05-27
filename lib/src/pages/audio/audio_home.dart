import 'package:flutter/material.dart';

class AudioHomePage extends StatefulWidget {
  const AudioHomePage({Key? key}) : super(key: key);

  @override
  State<AudioHomePage> createState() => _AudioHomePageState();
}

class _AudioHomePageState extends State<AudioHomePage> {
  List<String> imgs = [
    "boots.webp",
    "black-woman-face.jpeg",
    "boots.webp",
    "black-woman-face.jpeg",
    "boots.webp",
    "black-woman-face.jpeg",
    "boots.webp",
    "black-woman-face.jpeg",
    "boots.webp",
    "black-woman-face.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const SizedBox(height: 38,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Hello, User", style: TextStyle(fontFamily: 'Cera Pro', fontSize: 18, color: Colors.white),),
                    Text("It's a beautiful day!", style: TextStyle(fontFamily: 'Cera Pro', fontSize: 18, color: Colors.white),)
                  ],
                ),
                const SizedBox(width: 150,),
                const Icon(Icons.notifications_outlined, color: Colors.white,),
              ],
            ),
          ),
          const SizedBox(height: 48,),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text("Music", style: TextStyle(fontFamily: 'Cera Pro', color: Colors.white)),
                      SizedBox(width: 12,),
                      Text("Podcast", style: TextStyle(fontFamily: 'Cera Pro', color: Colors.white)),
                      SizedBox(width: 12,),
                      Text("Event", style: TextStyle(fontFamily: 'Cera Pro', color: Colors.white)),
                      SizedBox(width: 12,),
                      Text("Creators", style: TextStyle(fontFamily: 'Cera Pro', color: Colors.white)),
                    ],
                  ),
                ),
                const SizedBox(height: 8.0,),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160.0,
                        margin: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      Container(
                        width: 160.0,
                        margin: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      Container(
                        width: 160.0,
                        margin: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      Container(
                        width: 160.0,
                        margin: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      Container(
                        width: 160.0,
                        margin: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      Container(
                        width: 160.0,
                        margin: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28,),
                const Padding(
                  padding: EdgeInsets.only(bottom: 6.0, left: 16.0),
                  child: Align(alignment: Alignment.centerLeft, child: Text("Creators", textDirection: TextDirection.ltr, textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Cera Pro', fontSize: 21, color: Colors.white, fontWeight: FontWeight.w800),)),
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var image in imgs)
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          width: 110,
                          height: 124,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: const SizedBox(),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 24,),
                const Padding(
                  padding: EdgeInsets.only(bottom: 6.0, left: 16.0),
                  child: Align(alignment: Alignment.centerLeft, child: Text("Popular Today", textDirection: TextDirection.ltr, textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Cera Pro', fontSize: 21, color: Colors.white, fontWeight: FontWeight.w800),)),
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160.0,
                        margin: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      Container(
                        width: 160.0,
                        margin: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      Container(
                        width: 160.0,
                        margin: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      Container(
                        width: 160.0,
                        margin: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      Container(
                        width: 160.0,
                        margin: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      Container(
                        width: 160.0,
                        margin: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  }

}
