import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/itemModel.dart';

class FimalyPage extends StatelessWidget {
  const FimalyPage({Key? key}) : super(key: key);
  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        arName: 'الأب',
        enName: 'Father'),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        arName: 'الأم',
        enName: 'Mother'),
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        arName: 'الجد',
        enName: 'Grandfather'),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        arName: 'الجده',
        enName: 'Grandmother'),
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        arName: 'الأخت',
        enName: 'Sister'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        arName: 'الاخ',
        enName: 'brother'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('أفراد العائله'),
          titleTextStyle: TextStyle(
            fontSize: 33,
            fontFamily: 'Changa',
            color: Colors.white,
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 88, 141, 162)),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (Context, index) {
            return Item(
              color: Color.fromARGB(255, 200, 239, 255),
              number: numbers[index],
            );
          }),
    );
  }
}
