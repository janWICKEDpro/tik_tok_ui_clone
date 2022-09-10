import 'package:flutter/material.dart';

Widget textButton(String title) {
  return TextButton(
    child: Text(
      title,
      style: const TextStyle(color: Colors.white),
    ),
    onPressed: () {},
  );
}

Widget statText(String stat) {
  return Text(
    stat,
    style: const TextStyle(fontSize: 10),
  );
}
