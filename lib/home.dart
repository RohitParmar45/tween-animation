import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  bool isLike = false;
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = ColorTween(begin: Colors.grey[400], end: Colors.red)
        .animate(animationController);

    animationController.addListener(() {});
  }

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
                const Text(
                  "Mahankeswar Mandir",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 12),
                  child: AnimatedBuilder(
                    animation: animationController,
                    builder: (BuildContext context, Widget? child) =>
                        IconButton(
                      icon: Icon(
                        Icons.thumb_up,
                        size: 30,
                        color: animation.value,
                      ),
                      onPressed: () {
                        isLike
                            ? animationController.reverse()
                            : animationController.forward();
                        isLike = !isLike;
                      },
                    ),
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
