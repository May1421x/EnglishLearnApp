import 'package:flutter/material.dart';

// ignore: must_be_immutable
class category extends StatelessWidget {
  category({this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    var gestureDetector2 = GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 5.0,
              )
            ],
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
          height: 77,
          width: 400,
          //   alignment: Alignment.center,
          //   height: 65,
          // width: double.infinity,
          // color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text!,
                style: TextStyle(
                  fontFamily: 'Changa',
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );

    var gestureDetector = gestureDetector2;
    return gestureDetector;
  }
}
