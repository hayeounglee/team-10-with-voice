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
                      Text(
                        'Alzheimer is a',
                        style: textStyle,
                      ),
                      Text(
                        'high-risk disease,',
                        style: textStyle,
                      ),
                      Text(
                        'and it can occur even',
                        style: textStyle,
                      ),
                      Text('at a young age', style: textStyle)
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
                Text(
                  'If detected early and ',
                  style: textStyle,
                ),
                Text(
                  'managed appropriately,',
                  style: textStyle,
                ),
                Text(
                  'it can be helpful',
                  style: textStyle,
                ),
                Text(
                  'for prevention',
                  style: textStyle,
                )
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
                Text(
                  'So we created a game',
                  style: textStyle,
                ),
                Text(
                  'that can help improve ',
                  style: textStyle,
                ),
                Text(
                  'both physical fitness and memory',
                  style: textStyle,
                ),
                Text(
                  'at the same time!',
                  style: textStyle,
                )
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
