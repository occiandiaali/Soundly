import 'package:flutter/material.dart';

Widget createFABExt() => AnimatedContainer(
    duration: const Duration(milliseconds: 200),
  curve: Curves.linear,
  width: 150,
  height: 50,
  child: FloatingActionButton.extended(
      onPressed: () {},
    icon: const Icon(Icons.edit_road),
      label: const Center(
        child: Text(
          "Compose",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),),
);