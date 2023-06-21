import 'package:flutter/material.dart';
import 'package:soundly/src/pages/audio/audio_home.dart';
import 'package:soundly/src/pages/layout_page.dart';
import 'package:soundly/src/widgets/build_cta_button.dart';

class GettingStartedPage extends StatelessWidget {
  const GettingStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xFFe63946), Colors.black.withOpacity(0.5)],
            stops: const [0.0, 0.4],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            tileMode: TileMode.repeated,
          )
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/black-woman-face.jpeg"),
                  fit: BoxFit.cover),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: const Text("Soundly", style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cera Pro',
                color: Colors.white,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Discover. Create. Share. Listen. Love",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 36, fontFamily: 'Cera Pro', color: Colors.white),
                  ),
                  const SizedBox(height: 18,),
                  const Text(
                    "You can create a playlist, and share with others. Or, simply discover new sounds",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18, fontFamily: 'Cera Pro', color: Colors.white24),
                  ),
                  const SizedBox(height: 24.0,),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const AudioHomePage())
                        );
                      },
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              const BorderSide(
                                  width: 2,
                                  color: Colors.deepOrange)),
                          foregroundColor:
                          MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(vertical: 10, horizontal: 50)
                          )
                      ),
                      child: const Text("Get Started",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Cera Pro'),)),
                  const SizedBox(height: 8.0,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
