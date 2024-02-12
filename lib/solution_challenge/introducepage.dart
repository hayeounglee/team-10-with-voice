import 'package:flutter/material.dart';
import 'package:flutter_gdsc_sc/solution_challenge/sc_homescreen.dart';

class introducePage1 extends StatelessWidget {
  const introducePage1({super.key});
  final textStyle = const TextStyle(fontFamily: 'GamjaFlower', fontSize: 35);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 8)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'sc_image/introduce_1.png',
                      width: constraints.maxHeight * 0.5,
                      height: constraints.maxWidth * 0.5,
                    ),
                    Positioned(
                      left: 60,
                      child: Icon(
                        Icons.trending_up_rounded,
                        size: constraints.maxHeight * 0.3,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: textStyle,
                          children: const [
                            TextSpan(
                              text: 'Alzheimer is a\n',
                            ),
                            TextSpan(
                              text: 'high-risk disease',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: ',\nand it can occur even\nat a ',
                            ),
                            TextSpan(
                              text: 'young age',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '\n',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const introducePage2()),
                      );
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 50,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class introducePage2 extends StatelessWidget {
  const introducePage2({super.key});
  final textStyle = const TextStyle(fontFamily: 'GamjaFlower', fontSize: 35);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset('sc_image/introduce_2.png'),
                const Icon(
                  Icons.search,
                  size: 300,
                  color: Colors.white,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: textStyle,
                    children: const [
                      TextSpan(
                        text: 'If detected ',
                      ),
                      TextSpan(
                        text: 'early',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' and ',
                      ),
                      TextSpan(
                        text: 'managed appropriately,',
                      ),
                      TextSpan(
                        text: ' it can be helpful for prevention',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const introducePage3()),
                  );
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 50,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class introducePage3 extends StatelessWidget {
  const introducePage3({super.key});
  final textStyle = const TextStyle(fontFamily: 'GamjaFlower', fontSize: 35);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Image.asset('sc_image/introduce_3.png'),
                const Icon(Icons.health_and_safety,
                    color: Colors.white, size: 370)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: textStyle,
                    children: const [
                      TextSpan(
                        text:
                            'So we created a game\nthat can help improve\nboth ',
                      ),
                      TextSpan(
                        text: 'physical fitness',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' and ',
                      ),
                      TextSpan(
                        text: 'memory',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '\nat the same time!',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const introducePage4()),
                  );
                },
                icon: const Icon(Icons.play_arrow, size: 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class introducePage4 extends StatelessWidget {
  const introducePage4({super.key});
  final textStyle = const TextStyle(fontFamily: 'GamjaFlower', fontSize: 35);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Image.asset('sc_image/introduce_4.png'),
                const Positioned(
                  left: 80,
                  top: 100,
                  child: Icon(
                    Icons.settings_accessibility,
                    color: Colors.white,
                    size: 200,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Okay! lets start game!!',
                  style: textStyle,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen_play()),
                  );
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 50,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
