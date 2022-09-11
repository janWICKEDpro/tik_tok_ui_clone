import 'package:flutter/material.dart';
import 'package:tik_tok_clone/colors.dart';
import 'package:tik_tok_clone/screens/mainfeed/reusables.dart';
import 'package:video_player/video_player.dart';

class MainFeed extends StatefulWidget {
  const MainFeed({super.key});

  @override
  State<MainFeed> createState() => _MainFeedState();
}

class _MainFeedState extends State<MainFeed> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Center(
            child: GestureDetector(
          child: VideoPlayer(_controller),
          onTap: () {
            setState(() {
              _controller.pause();
            });
          },
        )),
        Positioned(
          top: 300,
          right: 30,
          child: Column(
            children: [
              Stack(
                children: [
                  const SizedBox(
                    height: 100,
                    child: CircleAvatar(
                      radius: 30,
                    ),
                  ),
                  Positioned(
                    top: 65,
                    right: 18,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: const BoxDecoration(
                          color: pink,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: 10,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark,
                        size: 35,
                      )),
                  statText("323k")
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite, size: 35)),
                  statText("41k")
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.comment_sharp, size: 35)),
                  statText("412k")
                ],
              ),
            ],
          ),
        )
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
          height: 70, width: 70, child: Image.asset("assets/images/adds.png")),
    );
  }
}
