import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AudioHomePage extends StatefulWidget {
  const AudioHomePage({Key? key}) : super(key: key);

  @override
  State<AudioHomePage> createState() => _AudioHomePageState();
}

class PhotoItem {
  final String image;
  final String name;

  PhotoItem(this.image, this.name);
}

class _AudioHomePageState extends State<AudioHomePage> {

  final ScrollController _scrollController = ScrollController();
  bool _show = true;

  @override
  void initState() {
    super.initState();
    handleScroll();
  }

  @override
  void dispose() {
    _scrollController.removeListener(() {});
    super.dispose();
  }

  void showFAB() {
    setState(() {
      _show = true;
    });
  }

  void hideFAB() {
    setState(() {
      _show = false;
    });
  }

  void handleScroll() async {
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        hideFAB();
      }
      if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
        showFAB();
      }
    });
  }
  
  List<String> imgs = [
    "assets/images/boots.webp",
    "assets/images/black-woman-face.jpeg",
    "assets/images/female_profile.png",
    "assets/images/male_profile.png",
    "assets/images/boots.webp",
    "assets/images/black-woman-face.jpeg",
    "assets/images/female_profile.png",
    "assets/images/male_profile.png",
  ];

  final List<PhotoItem> _items = [
    PhotoItem('assets/images/male_profile.png', 'John Doe'),
    PhotoItem('assets/images/black-woman-face.jpeg', 'Jane Smith'),
    PhotoItem('assets/images/female_profile.png', 'Jane Doe'),
    PhotoItem('assets/images/male_profile.png', 'John Smith'),
    PhotoItem('assets/images/male_profile.png', 'John Doe'),
    PhotoItem('assets/images/black-woman-face.jpeg', 'Jane Smith'),
    PhotoItem('assets/images/female_profile.png', 'Jane Doe'),
    PhotoItem('assets/images/male_profile.png', 'John Smith'),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color(0xFFe63946), Colors.black.withOpacity(0.5)],
              stops: const [0.0, 0.9],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.repeated,
            )
        ),
        child: Column(
            children: [
              const SizedBox(height: 38,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                 // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/black-woman-face.jpeg'),
                          radius: 26,
                        ),
                        const SizedBox(width: 8,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Hello, occian9000", style: TextStyle(fontFamily: 'Cera Pro', fontSize: 16, color: Colors.white),),
                            Text("It's a beautiful day!", style: TextStyle(fontFamily: 'Cera Pro', fontSize: 14, color: Colors.white),)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 120,),
                    const Icon(Icons.notifications_outlined, color: Colors.white,),
                  ],
                ),
              ),
              const SizedBox(height: 28,),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, bottom: 18.0),
                child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("Music", style: TextStyle(fontFamily: 'Cera Pro', color: Colors.white)),
                    SizedBox(width: 12,),
                    Text("Podcast", style: TextStyle(fontFamily: 'Cera Pro', color: Colors.grey)),
                    SizedBox(width: 12,),
                    Text("Event", style: TextStyle(fontFamily: 'Cera Pro', color: Colors.grey)),
                    SizedBox(width: 12,),
                    Text("Creators", style: TextStyle(fontFamily: 'Cera Pro', color: Colors.grey)),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  controller: _scrollController,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 1,
                    ),
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image: AssetImage(_items[index].image)),

                            ),
                          ),
                        ),
                      );
                    }),
              ),
             // const SizedBox(height: 32,)
            ],
          ),
      ),
      floatingActionButton: Visibility(
        visible: _show,
          child: FloatingActionButton.extended(
              onPressed: () {},
              icon: const Icon(Icons.edit_road_rounded),
              label: const Text("Create"))),
    );
  }

}
