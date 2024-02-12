import 'package:flutter/material.dart';
import 'package:flutter_gdsc_sc/solution_challenge/introducepage.dart';
import 'package:flutter_gdsc_sc/solution_challenge/game_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x00939393),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 6)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 150.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0x00939393).withOpacity(0.25),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color(0x00939393).withOpacity(1),
                                width: 3)),
                        width: constraints.maxWidth * 0.8,
                        height: constraints.maxHeight * 0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0x008b956d).withOpacity(0.5),
                                  border: Border.all(
                                      color: const Color(0x008b956d)
                                          .withOpacity(1),
                                      width: 2)),
                              width: constraints.maxWidth * 0.8 * 0.5,
                              height: constraints.maxHeight * 0.3 * 0.5,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('XXX Game',
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'Gugi'))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              introducePage1()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0x008b956d)
                                          .withOpacity(0.4),
                                      border: Border.all(
                                          color: const Color(0x008b956d)
                                              .withOpacity(1),
                                          width: 2)),
                                  width: constraints.maxWidth * 0.8 * 0.3,
                                  height: constraints.maxHeight * 0.3 * 0.3,
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '>Learn',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'Gugi'),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.add,
                      size: 120,
                      color: Colors.green,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.translate(
                      offset: const Offset(150, -50),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.circle, size: 70, color: Colors.red),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(130, -80),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.circle, size: 70, color: Colors.red),
                      ),
                    ),
                  ],
                ),
                Transform.translate(
                  offset: const Offset(-50, -60),
                  child: Transform.rotate(
                    angle: -45 * 3.14 / 180,
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.drag_handle,
                        size: 100,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class HomeScreen_play extends StatelessWidget {
  const HomeScreen_play({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x00939393),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 6)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 150.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(0x00939393).withOpacity(0.25),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color(0x00939393).withOpacity(1),
                                width: 3)),
                        width: constraints.maxWidth * 0.8,
                        height: constraints.maxHeight * 0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0x008b956d).withOpacity(0.5),
                                  border: Border.all(
                                      color: const Color(0x008b956d)
                                          .withOpacity(1),
                                      width: 2)),
                              width: constraints.maxWidth * 0.8 * 0.5,
                              height: constraints.maxHeight * 0.3 * 0.5,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('XXX Game',
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'Gugi'))
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const gamePage()),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0x008b956d)
                                          .withOpacity(0.4),
                                      border: Border.all(
                                          color: const Color(0x008b956d)
                                              .withOpacity(1),
                                          width: 2)),
                                  width: constraints.maxWidth * 0.8 * 0.3,
                                  height: constraints.maxHeight * 0.3 * 0.3,
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '>Play',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'Gugi'),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.add,
                      size: 120,
                      color: Colors.green,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.translate(
                      offset: const Offset(150, -50),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.circle, size: 70, color: Colors.red),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(130, -80),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.circle, size: 70, color: Colors.red),
                      ),
                    ),
                  ],
                ),
                Transform.translate(
                  offset: const Offset(-50, -60),
                  child: Transform.rotate(
                    angle: -45 * 3.14 / 180,
                    child: const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.drag_handle,
                        size: 100,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
