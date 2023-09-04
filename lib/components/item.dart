import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';

import 'package:toku/models/itemModel.dart';

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.number,
    required this.color,
  }) : super(key: key);
  final ItemModel number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
              color: Color.fromARGB(255, 243, 243, 243),
              child: Image.asset(number.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  number.arName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontFamily: 'Changa',
                  ),
                ),
                Text(number.enName,
                    style: TextStyle(color: Colors.black, fontSize: 19)),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(right: 16),
          //   child: IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.play_arrow,
          //       color: Colors.white,
          //       size: 30,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
