import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/color_page.dart';
import 'package:toku/screens/fimaly_page.dart';
import 'package:toku/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Color.fromARGB(255, 255, 255, 255)),
      appBar: AppBar(
        backgroundColor: (Color.fromARGB(255, 94, 55, 120)),
        title: Text('تعلم الإنجليزيه'),
        titleTextStyle: TextStyle(
          fontFamily: 'Changa',
          color: const Color.fromARGB(255, 255, 255, 255),
          fontSize: 33,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset(
            'assets/images/family_members/photo1693600372-removebg-preview.png',
          ),

          category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NumbersPage();
                }));
              },
              text: 'الأرقام',
              color: Color.fromARGB(255, 233, 218, 255)),
          category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FimalyPage();
                }));
              },
              text: 'أفراد العائله',
              color: Color.fromARGB(255, 200, 239, 255)),
          category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorPage();
                }));
              },
              text: 'الألوان',
              color: Color.fromARGB(255, 255, 244, 202)),
          // category(
          //onTap: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          // return PhrasesPage();
          // }));
          // },
          //  text: 'Phrases',
          // color: Color.fromARGB(255, 72, 137, 223)),
        ]),
      ),
    );
  }
}
