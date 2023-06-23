import 'package:flutter/material.dart';

Widget createFABExt(context) => AnimatedContainer(
    duration: const Duration(milliseconds: 200),
  curve: Curves.linear,
  width: 150,
  height: 50,
  child: FloatingActionButton.extended(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Wrap(
                children: const [
                  ListTile(
                    leading: Icon(Icons.music_note_rounded, size: 24,),
                    title: Text("Record new music"),
                  ),
                  ListTile(
                    leading: Icon(Icons.podcasts_rounded, size: 24,),
                    title: Text("Record new podcast"),
                  ),
                ],
              );
            });
      },
    icon: const Icon(Icons.edit_road),
      label: const Center(
        child: Text(
          "Create",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),),
);