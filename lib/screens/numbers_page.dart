import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/itemModel.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<ItemModel> numbers = const [
    ItemModel(
        image: 'assets/images/numbers/number_one.png',
        arName: 'واحد',
        enName: 'one'),
    ItemModel(
        image: 'assets/images/numbers/number_two.png',
        arName: 'اثنان',
        enName: 'two'),
    ItemModel(
        image: 'assets/images/numbers/number_three.png',
        arName: 'ثلاثة',
        enName: 'three'),
    ItemModel(
        image: 'assets/images/numbers/number_four.png',
        arName: 'أربعة',
        enName: 'four'),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        arName: 'خمسة',
        enName: 'five'),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        arName: 'ستة',
        enName: 'six'),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        arName: 'سبعة',
        enName: 'seven'),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        arName: 'ثمانية',
        enName: 'eight'),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        arName: 'تسعة',
        enName: 'nine'),
    ItemModel(
        image: 'assets/images/numbers/number_ten.png',
        arName: 'عشرة',
        enName: 'ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('الأرقام'),
          titleTextStyle: TextStyle(
            fontSize: 33,
            fontFamily: 'Changa',
            color: Color.fromARGB(255, 244, 244, 244),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 94, 55, 120)),
      body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (Context, index) {
            return Item(
              color: Color.fromARGB(255, 233, 218, 255),
              number: numbers[index],
            );
          }),
    );
  }

  //List<Widget> getList(List<Number> numbers) {
  // List<Item> itemsList = [];
  // for (int i = 0; i < numbers.length; i++) {
  // itemsList.add(Item(
  //  number: numbers[i],
  //));
  // }
  //  return itemsList;
  // }
}
