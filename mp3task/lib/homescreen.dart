import 'package:flutter/material.dart';
import 'package:mp3task/provider.dart';
import 'package:provider/provider.dart';
import 'package:audioplayers/audioplayers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
    audioPlayer.dispose();
    super.dispose();
  }

  final audioPlayer = AudioPlayer();
  bool playing = false;
  IconData playingBotton = Icons.play_arrow;
  IconData playingBotton2 = Icons.play_arrow;
  IconData playingBotton3 = Icons.play_arrow;
  IconData playingBotton4 = Icons.play_arrow;

  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Consumer<ToDoProvider>(builder: (context, value, child) {
          return Scaffold(
            backgroundColor: const Color.fromARGB(255, 46, 45, 45),
            body: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 10,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 224, 224, 224),
                      hintText: " Search",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Trending right now",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 350,
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: SizedBox(
                          height: 200,
                          width: 250,
                          child: Image.asset(
                            "assets/images/darkside.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: SizedBox(
                          height: 200,
                          width: 250,
                          child: Image.asset(
                            "assets/images/sadness.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: SizedBox(
                          height: 200,
                          width: 250,
                          child: Image.asset(
                            "assets/images/heatwaves.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TabBar(controller: _tabController, tabs: const [
                  Tab(text: "Trend"),
                  Tab(text: "Rock"),
                  Tab(text: "Hip Hop"),
                  Tab(text: "Electro"),
                  Tab(text: "English"),
                ]),
                const SizedBox(height: 10),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/iamgood.jpg",
                                    height: 60,
                                    width: 60,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'I,m Good(Blue)',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        'David Geutta &Bebe Rexha',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  IconButton(
                                      iconSize: 40,
                                      color: Colors.white,
                                      onPressed: () async {
                                        if (playing) {}

                                        if (!playing) {
                                          setState(() {
                                            playingBotton = Icons.pause;
                                            playing = true;
                                          });
                                        } else {
                                          setState(() {
                                            playingBotton = Icons.play_arrow;
                                            playing = false;
                                          });
                                        }
                                      },
                                      icon: Icon(playingBotton)),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Icon(
                                      color: Colors.white,
                                      Icons.favorite_border,
                                      size: 25,
                                      weight: 5,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/underinfluence.jpg",
                                    height: 60,
                                    width: 60,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Under Influence',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      Text(
                                        'Chris Brown ',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  IconButton(
                                      iconSize: 40,
                                      color: Colors.white,
                                      onPressed: () async {
                                        if (playing) {}

                                        if (!playing) {
                                          setState(() {
                                            playingBotton2 = Icons.pause;
                                            playing = true;
                                          });
                                        } else {
                                          setState(() {
                                            playingBotton2 = Icons.play_arrow;
                                            playing = false;
                                          });
                                        }
                                      },
                                      icon: Icon(playingBotton2)),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Icon(
                                      color: Colors.white,
                                      Icons.favorite_border,
                                      size: 25,
                                      weight: 5,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/forgetme.jpg",
                                    height: 60,
                                    width: 60,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Forget Me         ',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Lewis Capaldi',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  IconButton(
                                      iconSize: 40,
                                      color: Colors.white,
                                      onPressed: () async {
                                        if (playing) {}

                                        if (!playing) {
                                          setState(() {
                                            playingBotton3 = Icons.pause;
                                            playing = true;
                                          });
                                        } else {
                                          setState(() {
                                            playingBotton3 = Icons.play_arrow;
                                            playing = false;
                                          });
                                        }
                                      },
                                      icon: Icon(playingBotton3)),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Icon(
                                      color: Colors.white,
                                      Icons.favorite_border,
                                      size: 25,
                                      weight: 5,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/starboyy.png",
                                    height: 60,
                                    width: 60,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Star Boy          ',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'The Weeknd',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      )
                                    ],
                                  ),
                                  IconButton(
                                      iconSize: 40,
                                      color: Colors.white,
                                      onPressed: () async {
                                        if (playing) {}

                                        if (!playing) {
                                          setState(() {
                                            playingBotton4 = Icons.pause;
                                            playing = true;
                                          });
                                        } else {
                                          setState(() {
                                            playingBotton4 = Icons.play_arrow;
                                            playing = false;
                                          });
                                        }
                                      },
                                      icon: Icon(playingBotton4)),
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Icon(
                                      color: Colors.white,
                                      Icons.favorite_border,
                                      size: 25,
                                      weight: 5,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const Center(
                          child: Text(
                        'Rock',
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      )),
                      const Center(
                          child: Text(
                        'Hip Hop',
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      )),
                      const Center(
                          child: Text(
                        'Electro',
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      )),
                      const Center(
                          child: Text(
                        'English',
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
