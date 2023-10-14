import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLike = false;
  Color iconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Column(children: [
          Image.asset("assets/ujjain.jpg"),
          Padding(
            padding: EdgeInsets.only(left: 12, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Mahankeswar Mandir",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 12),
                  child: IconButton(
                    icon: Icon(
                      Icons.thumb_up,
                      size: 30,
                      color: iconColor,
                    ),
                    onPressed: () {
                      iconColor = isLike ? Colors.grey : Colors.red;
                      isLike = !isLike;
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text("Lord shiva temple in Ujjain, MadhyaPradesh",
                style: TextStyle(color: Colors.grey, fontSize: 15)),
          ),
        ]),
      ),
    );
  }
}
