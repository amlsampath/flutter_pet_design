import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  CustomButton({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .6,
      padding: EdgeInsets.all(
        size.width * .035,
      ),
      decoration: BoxDecoration(
          color: Colors.yellow[800],
          borderRadius: BorderRadius.circular(
            20.0,
          )),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
