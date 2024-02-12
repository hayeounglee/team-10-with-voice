import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_gdsc_sc/solution_challenge/try_again_page.dart';

class gamePage extends StatefulWidget {
  gamePage({super.key});

  @override
  State<gamePage> createState() => _gamePageState();
}

class _gamePageState extends State<gamePage> {
  List<String> _displayTexts = ['Zebra', 'Lion', 'Fox', 'Panda'];
  IconData _iconData = Icons.info;
  bool _showIconAndBox = false;

  void _changeText() {
    setState(() {
      _showIconAndBox = true;
      _iconData = Icons.sentiment_satisfied_alt;
      Timer(Duration(seconds: 2), () {
        setState(() {
          _showIconAndBox = false;
          _iconData = Icons.info;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 6)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Container(
                        alignment: Alignment.center,
                        width: constraints.maxWidth * 0.8,
                        height: constraints.maxHeight * 0.3,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(0, 193, 177, 177)
                                .withOpacity(0.4),
                            border: Border.all(
                                color: Color(0x939393).withOpacity(1)),
                            borderRadius: BorderRadius.circular(15)),
                        child: _showIconAndBox
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Container(
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(200),
                                          color: Colors.green),
                                      child: Icon(
                                        _iconData,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      height: constraints.maxHeight * 0.05),
                                  Container(
                                    width: constraints.maxWidth * 0.8 * 0.3,
                                    height: constraints.maxHeight * 0.3 * 0.25,
                                    decoration: BoxDecoration(
                                        color: Color(0X8B956D).withOpacity(0.4),
                                        border: Border.all(
                                            color: Color(0x8B956D)
                                                .withOpacity(1))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Go On!',
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'GamjaFlower'),
                                        ),
                                      ],
                                    ), // 작은 박스
                                  ),
                                ],
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: _displayTexts
                                    .map((text) => Text(
                                          text,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'BlackHanSans'),
                                        ))
                                    .toList(),
                              ),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('5',
                            style: TextStyle(
                                fontSize: 100,
                                color: Colors.grey,
                                fontFamily: 'BlackHanSans')),
                        Text(':',
                            style: TextStyle(
                                fontSize: 100,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'BlackHanSans')),
                        Text('4',
                            style: TextStyle(
                                fontSize: 100,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'BlackHanSans'))
                      ],
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.001,
                    ),
                    Text(
                      '5',
                      style: TextStyle(
                          fontSize: 150,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'BlackHanSans'),
                    ),
                    Container(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: _changeText, icon: Icon(Icons.thumb_up)),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => tryAgainPage()));
                              },
                              child: Icon(Icons.thumb_down)),
                        )
                      ],
                    ),
                    SizedBox(height: constraints.maxHeight * 0.001)
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
