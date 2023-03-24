import 'package:flutter/material.dart';

class CustomPopus extends StatelessWidget {
  final String title;
  final String content;
  final List<Widget> actions;
  const CustomPopus({Key? key, required this.title, required this.content, required this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),

      // title: Text(
      //   this.title,
      //   style: Theme.of(context).textTheme.headline6,
      // ),
      actions: this.actions,
      content: Stack(
alignment: Alignment.center,
        children: [
          Image.asset("assets/images/map.png", fit: BoxFit.cover),
          Center(
            child: Image.asset("assets/images/dashbord.png"),
          ),

        ],
      ),
    );
  }
}
