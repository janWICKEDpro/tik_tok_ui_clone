import 'package:flutter/material.dart';
import 'package:tik_tok_clone/screens/mainfeed/mainfeed.dart';
import 'package:tik_tok_clone/screens/profile/profile.dart';
import 'package:tik_tok_clone/screens/search/search.dart';

void main() {
  runApp(const TikTokApp());
}

class TikTokApp extends StatelessWidget {
  const TikTokApp({super.key});

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
        routes:{}
  }
}
