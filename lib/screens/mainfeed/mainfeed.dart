import 'package:flutter/material.dart';
import 'package:tik_tok_clone/screens/mainfeed/reusables.dart';
import 'package:tik_tok_clone/screens/mainfeed/videodisplay.dart';
import 'package:tik_tok_clone/screens/search/search.dart';

class MainFeed extends StatefulWidget {
  final ValueChanged<bool>? val;
  const MainFeed({super.key, this.val});

  @override
  State<MainFeed> createState() => _MainFeedState();
}

class _MainFeedState extends State<MainFeed> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 45,
            itemBuilder: (context, index) {
              return Video();
            }),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 45.0, horizontal: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.home,
                color: Colors.transparent,
              ),
              Row(
                children: [textButton("following  |"), textButton("for you")],
              ),
              IconButton(
                  onPressed: () {
                    // widget.val!(true);
                    showSearch(
                        context: context, delegate: CustomSearchDelegate());
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                  ))
            ],
          ),
        )
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
          height: 70, width: 70, child: Image.asset("assets/images/adds.png")),
    );
  }
}
