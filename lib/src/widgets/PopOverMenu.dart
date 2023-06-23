import 'package:flutter/material.dart';

class PopOverMenu extends StatefulWidget {
  const PopOverMenu({Key? key}) : super(key: key);

  @override
  State<PopOverMenu> createState() => _PopOverMenuState();
}

class _PopOverMenuState extends State<PopOverMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert_rounded, color: Colors.white,),
        onSelected: (value) {
        if (value == 0) {
          debugPrint("Favourites..");
        } else if (value == 1) {
          debugPrint("History..");
        } else if (value == 2) {
          debugPrint("Logout..");
        }
        },
        itemBuilder: (context) {
        return [
          const PopupMenuItem<int>(
            value: 0,
            child: Text("Favourites"),
          ),
          const PopupMenuItem<int>(
            value: 1,
            child: Text("History"),
          ),
          const PopupMenuItem<int>(
            value: 2,
            child: Text("Logout"),
          ),
        ];
        });
  }
}
