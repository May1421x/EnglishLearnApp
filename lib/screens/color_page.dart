import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/itemModel.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({Key? key}) : super(key: key);
  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        arName: 'أسود',
        enName: 'Black'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        arName: 'بني',
        enName: 'Brown'),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        arName: 'أخضر',
        enName: 'Green'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        arName: 'أحمر',
        enName: 'Red'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        arName: 'أبيض',
        enName: 'White'),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        arName: 'رمادي',
        enName: 'Gray'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        arName: 'أصفر',
        enName: 'Yellow'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('الألوان'),
          titleTextStyle: TextStyle(
              fontSize: 33, color: Colors.white, fontFamily: 'Changa'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 209, 193, 128)),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (Context, index) {
            return Item(
              color: Color.fromARGB(255, 255, 244, 202),
              number: numbers[index],
            );
          }),
    );
  }
}
