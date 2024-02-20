import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String name;
  final double height;
  final double width;
  final Function onPressed;

  //constructor
  const RoundButton({
    required this.name,
    required this.height,
    required this.width,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      //add decoration to add backgrounds and stuff
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(height * 0.25),
        color: Color.fromRGBO(0, 82, 218, 1.0),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          name,
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
    );
  }
}
