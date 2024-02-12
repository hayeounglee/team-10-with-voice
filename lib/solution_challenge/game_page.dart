import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'dart:async';
import 'package:flutter_gdsc_sc/solution_challenge/try_again_page.dart';

class gamePage extends StatefulWidget {
  const gamePage({super.key});

  @override
  State<gamePage> createState() => _gamePageState();
}

class _gamePageState extends State<gamePage> {
  final SpeechToText _speechToText = SpeechToText();
  final List<String> _speechResultsList = [];
  bool _speechEnabled = false;
  String _wordsSpoken = "";
  double _confidenceLevel = 0;
  bool _gameEnabled = true;

  final int _player1Score = 0;
  final int _player2Score = 0;
  final int _playerTurn = 0;
  @override
  void initState() {
    super.initState();
    initSpeech();
  }

  void initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {
      //_wordsSpoken = ""; // 추가
    });
  }

  void _startListening() async {
    _clearWordsSpoken(); // _wordsSpoken 초기화
    await _speechToText.listen(
      onResult: _onSpeechResult,
      localeId: 'en_US', // 영어로만 인식되도록 설정
    );
    _startCoutDonwn(); // 초시계 작동
    setState(() {
      _confidenceLevel = 0;
    });
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {
      if (_wordsSpoken == "") {
        // 시간안에 단어를 말하지 못할 떄 -> 게임 종료
        _gameEnabled = false;
      } else if (_speechResultsList.contains(_wordsSpoken)) {
        // 리스트 안에 있는 단어를 말할 떄 -> 게임 종료
        // _wordsSpoken = "Wrong! '$_wordsSpoken' is already in the list.";
        _gameEnabled = false;
      } else {
        _autoPressButton(); // 자동 누르기 호출, 다른 플레이어로 넘어감
        _speechResultsList.add(_wordsSpoken);
        setState(() {
          if (_playerTurn % 2 == 0) {
            _player1Score++;
          } else {
            _player2Score++;
          }
          _playerTurn++;
        });
      }
    });
  }

  void _clearWordsSpoken() {
    setState(() {
      _wordsSpoken = "";
    });
  }

  void _onSpeechResult(result) {
    setState(() {
      _wordsSpoken = "${result.recognizedWords}";
      _confidenceLevel = result.confidence;
    });
  }

  // << Timer implementaion >>
  static const maxSeconds = 5;
  int timeLeft = maxSeconds;

  void _startCoutDonwn() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        resetTimer();
        timer.cancel();
      }
    });
  }

  void resetTimer() {
    setState(() {
      _stopListening();
      timeLeft = maxSeconds;
    });
  }

  void _autoPressButton() {
    //  1초 후에 자동으로 Button을 누르도록 설정
    Future.delayed(const Duration(seconds: 1), () {
      if (_gameEnabled) {
        _startListening();
      }
    });
  }

  void _restartGame() {
    setState(() {
      _gameEnabled = true;
      _player1Score = 0;
      _player2Score = 0;
      _playerTurn = 0;
      _confidenceLevel = 0;
      _speechResultsList.clear();
      _clearWordsSpoken();
    });
  }

  final List<String> _displayTexts = ['Zebra', 'Lion', 'Fox', 'Panda'];
  IconData _iconData = Icons.info;
  bool _showIconAndBox = false;

  void _changeText() {
    setState(() {
      _showIconAndBox = true;
      _iconData = Icons.sentiment_satisfied_alt;
      Timer(const Duration(seconds: 2), () {
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
                            color: const Color.fromARGB(0, 193, 177, 177)
                                .withOpacity(0.4),
                            border: Border.all(
                                color: const Color(0x00939393).withOpacity(1)),
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
                                        color: const Color(0x008b956d)
                                            .withOpacity(0.4),
                                        border: Border.all(
                                            color: const Color(0x008b956d)
                                                .withOpacity(1))),
                                    child: const Column(
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
                                          style: const TextStyle(
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
                        Text(
                          ' $_player1Score : $_player2Score',
                          style: const TextStyle(
                              fontSize: 100,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'BlackHanSans'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.001,
                    ),
                    const Text(
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
                            onPressed: _changeText,
                            icon: const Icon(Icons.thumb_up)),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => tryAgainPage()));
                              },
                              child: const Icon(Icons.thumb_down)),
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
