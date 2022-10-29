import 'package:flutter/material.dart';
import 'package:tik_tok_clone/screens/mainfeed/mainfeed.dart';
import 'package:tik_tok_clone/screens/profile/profile.dart';
import 'package:tik_tok_clone/screens/search/search.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatefulWidget {
  const TikTokApp({super.key});

  @override
  State<TikTokApp> createState() => _TikTokAppState();
}

class _TikTokAppState extends State<TikTokApp> {
  bool? isPressed;
  void _handleSearchPressed(bool val) {
    setState(() {
      isPressed = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(),
        theme: ThemeData(
          brightness: Brightness.dark,
          visualDensity: const VisualDensity(horizontal: 2.0, vertical: 2.0),
          primaryColorLight: const Color(0xff03203C),
          primaryColorDark: const Color(0xff242B2E),
        ),
        home: Navigator(
          pages: [
            MaterialPage(
              child: MainFeed(val: _handleSearchPressed),
            ),
          ],
          onPopPage: (route, result) {
            if (!route.didPop(result)) return false;

            return true;
          },
        ));
  }
}
