import 'package:flutter/material.dart';
import '../widgets/item.dart';
import '../components/models/itemModel.dart';

class homePage extends StatelessWidget {
  List<itemModel> tunesList = [
    itemModel(color: Color(0xffF44336), tunePath: 'note1.wav'),
    itemModel(color: Color(0xffF89800), tunePath: 'note2.wav'),
    itemModel(color: Color(0xffFEEB3B), tunePath: 'note3.wav'),
    itemModel(color: Color(0xff4CAF50), tunePath: 'note4.wav'),
    itemModel(color: Color(0xff2F9688), tunePath: 'note5.wav'),
    itemModel(color: Color(0xff2896F3), tunePath: 'note6.wav'),
    itemModel(color: Color(0xff9C27B0), tunePath: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Relaxing Tunes App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff253238),
        ),

// Scaffold body

        body: Column(
          children: tunesList
              .map(
                (e) => item(tuneBox: e),
              )
              .toList(),
        ),
      ),
      // بتاخد كل عنصر فى الليست اللى فوق
      // وتعملها مابينج يعني بتدخلها  جوه ال ايتم
      // والخرج بتاع الايتم هتسجله ك عنصر فى ليست جديده بدون اسم
      // والليست دي هتتعرض فى العمود
    );
  }
}

// body: ListView.builder(
//   itemCount: tunesList.length,
//   itemBuilder: (context, index) {
//     return item(
//       tuneBox: tunesList[index],
//     );
//   },
// ),
