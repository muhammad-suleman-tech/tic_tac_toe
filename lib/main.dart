import 'package:flutter/material.dart';

void main() {
  runApp(const TicTacToe());
}

class TicTacToe extends StatelessWidget {
  const TicTacToe({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index0 = 0;
  int index1 = 0;
  int index2 = 0;
  int index3 = 0;
  int index4 = 0;
  int index5 = 0;
  int index6 = 0;
  int index7 = 0;
  int index8 = 0;

  int turn = 0;
  bool win = false;
  String winner = "";

  void checkPattern() {
    bool pattern1 = index0 == 1 && index1 == 1 && index2 == 1;
    bool pattern2 = index3 == 1 && index4 == 1 && index5 == 1;
    bool pattern3 = index6 == 1 && index7 == 1 && index8 == 1;
    bool pattern4 = index0 == 1 && index3 == 1 && index6 == 1;
    bool pattern5 = index1 == 1 && index4 == 1 && index7 == 1;
    bool pattern6 = index2 == 1 && index5 == 1 && index8 == 1;
    bool pattern7 = index0 == 1 && index4 == 1 && index8 == 1;
    bool pattern8 = index2 == 1 && index4 == 1 && index6 == 1;

    bool pattern9 = index0 == 2 && index1 == 2 && index2 == 2;
    bool pattern10 = index3 == 2 && index4 == 2 && index5 == 2;
    bool pattern11 = index6 == 2 && index7 == 2 && index8 == 2;
    bool pattern12 = index0 == 2 && index3 == 2 && index6 == 2;
    bool pattern13 = index1 == 2 && index4 == 2 && index7 == 2;
    bool pattern14 = index2 == 2 && index5 == 2 && index8 == 2;
    bool pattern15 = index0 == 2 && index4 == 2 && index8 == 2;
    bool pattern16 = index2 == 2 && index4 == 2 && index6 == 2;

    if (pattern1 ||
        pattern2 ||
        pattern3 ||
        pattern4 ||
        pattern5 ||
        pattern6 ||
        pattern7 ||
        pattern8) {
      win = true;
      winner = "Player 1 is winner";
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          winner,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
      ));
      print("player one is winner");
    } else if (pattern9 ||
        pattern10 ||
        pattern11 ||
        pattern12 ||
        pattern13 ||
        pattern14 ||
        pattern15 ||
        pattern16) {
      win = true;
      winner = "Player 2 is winner";
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          winner,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
      ));
      print("Player 2 is winner");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff222222),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              win
                  ? Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Text(
                        "$winner ",
                        style:
                            TextStyle(fontSize: 22, color: Colors.amber[400]),
                      ),
                    )
                  : const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Text(
                        "Lets See Who Wins",
                        style: TextStyle(fontSize: 22, color: Colors.amber),
                      ),
                    ),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (turn == 1) {
                              index0 = 1;
                              turn = 2;
                            } else if (turn == 2) {
                              index0 = 2;
                              turn = 1;
                            }
                            checkPattern();
                          });
                        },
                        child: index0 == 1
                            ? Container(
                                color: Colors.black,
                                child: Image.asset("assets/images/cross.png"),
                              )
                            : index0 == 2
                                ? Container(
                                    color: Colors.black,
                                    child: Image.asset(
                                      "assets/images/zero.png",
                                      color: Colors.black,
                                    ),
                                  )
                                : Container(
                                    color: Colors.black,
                                  )),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (turn == 1) {
                              index1 = 1;
                              turn = 2;
                            } else if (turn == 2) {
                              index1 = 2;
                              turn = 1;
                            }
                            checkPattern();
                          });
                        },
                        child: index1 == 1
                            ? Container(
                                color: const Color.fromARGB(255, 8, 8, 7),
                                child: Image.asset("assets/images/cross.png"),
                              )
                            : index1 == 2
                                ? Container(
                                    color: Colors.black,
                                    child: Image.asset(
                                      "assets/images/zero.png",
                                      color: Colors.orangeAccent,
                                    ),
                                  )
                                : Container(color: Colors.black)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (turn == 1) {
                              index2 = 1;
                              turn = 2;
                            } else if (turn == 2) {
                              index2 = 2;
                              turn = 1;
                            }
                            checkPattern();
                          });
                        },
                        child: index2 == 1
                            ? Container(
                                color: Colors.black,
                                child: Image.asset("assets/images/cross.png"),
                              )
                            : index2 == 2
                                ? Container(
                                    color: Colors.black,
                                    child: Image.asset(
                                      "assets/images/zero.png",
                                      color: Colors.orangeAccent,
                                    ),
                                  )
                                : Container(color: Colors.black)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (turn == 1) {
                              index3 = 1;
                              turn = 2;
                            } else if (turn == 2) {
                              index3 = 2;
                              turn = 1;
                            }
                            checkPattern();
                          });
                        },
                        child: index3 == 1
                            ? Container(
                                color: Colors.black,
                                child: Image.asset("assets/images/cross.png"),
                              )
                            : index3 == 2
                                ? Container(
                                    color: Colors.black,
                                    child: Image.asset(
                                      "assets/images/zero.png",
                                      color: Colors.orangeAccent,
                                    ),
                                  )
                                : Container(color: Colors.black)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (turn == 1) {
                              index4 = 1;
                              turn = 2;
                            } else if (turn == 2) {
                              index4 = 2;
                              turn = 1;
                            }
                            checkPattern();
                          });
                        },
                        child: index4 == 1
                            ? Container(
                                color: Colors.black,
                                child: Image.asset("assets/images/cross.png"),
                              )
                            : index4 == 2
                                ? Container(
                                    color: Colors.black,
                                    child: Image.asset(
                                      "assets/images/zero.png",
                                      color: Colors.orangeAccent,
                                    ),
                                  )
                                : Container(color: Colors.black)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (turn == 1) {
                              index5 = 1;
                              turn = 2;
                            } else if (turn == 2) {
                              index5 = 2;
                              turn = 1;
                            }
                            checkPattern();
                          });
                        },
                        child: index5 == 1
                            ? Container(
                                color: Colors.black,
                                child: Image.asset("assets/images/cross.png"),
                              )
                            : index5 == 2
                                ? Container(
                                    color: Colors.black,
                                    child: Image.asset(
                                      "assets/images/zero.png",
                                      color: Colors.orangeAccent,
                                    ),
                                  )
                                : Container(color: Colors.black)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (turn == 1) {
                              index6 = 1;
                              turn = 2;
                            } else if (turn == 2) {
                              index6 = 2;
                              turn = 1;
                            }
                            checkPattern();
                          });
                        },
                        child: index6 == 1
                            ? Container(
                                color: Colors.black,
                                child: Image.asset("assets/images/cross.png"),
                              )
                            : index6 == 2
                                ? Container(
                                    color: Colors.black,
                                    child: Image.asset(
                                      "assets/images/zero.png",
                                      color: Colors.orangeAccent,
                                    ),
                                  )
                                : Container(color: Colors.black)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (turn == 1) {
                              index7 = 1;
                              turn = 2;
                            } else if (turn == 2) {
                              index7 = 2;
                              turn = 1;
                            }
                            checkPattern();
                          });
                        },
                        child: index7 == 1
                            ? Container(
                                color: Colors.black,
                                child: Image.asset("assets/images/cross.png"),
                              )
                            : index7 == 2
                                ? Container(
                                    color: Colors.black,
                                    child: Image.asset(
                                      "assets/images/zero.png",
                                      color: Colors.orangeAccent,
                                    ),
                                  )
                                : Container(color: Colors.black)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (turn == 1) {
                              index8 = 1;
                              turn = 2;
                            } else if (turn == 2) {
                              index8 = 2;
                              turn = 1;
                            }
                            checkPattern();
                          });
                        },
                        child: index8 == 1
                            ? Container(
                                color: Colors.black,
                                child: Image.asset("assets/images/cross.png"),
                              )
                            : index8 == 2
                                ? Container(
                                    color: Colors.black,
                                    child: Image.asset(
                                      "assets/images/zero.png",
                                      color: Colors.orangeAccent,
                                    ),
                                  )
                                : Container(color: Colors.black)),
                  ],
                ),
              ),
              turn == 0
                  ? SizedBox(
                      height: 40,
                      width: 80,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber),
                        onPressed: () {
                          setState(() {
                            turn = 1;
                            win = false;
                          });
                        },
                        child: const Text(
                          "Start",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber),
                      onPressed: () {
                        setState(() {
                          index0 = 0;
                          index1 = 0;
                          index2 = 0;
                          index3 = 0;
                          index4 = 0;
                          index5 = 0;
                          index6 = 0;
                          index7 = 0;
                          index8 = 0;
                          turn = 0;
                          win = false;
                        });
                      },
                      child: const Text(
                        "Reset",
                        style: TextStyle(color: Colors.black),
                      )),
            ],
          ),
        ));
  }
}
