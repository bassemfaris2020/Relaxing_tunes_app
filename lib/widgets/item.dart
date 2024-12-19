import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../components/models/itemModel.dart';

class item extends StatelessWidget {
  item({required this.tuneBox});

  itemModel tuneBox;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // لاحظ حطينا الاكسباندد جواها ال
      //gestureDetector
      //عشان يحصلها تمدد داخل اي حاجه تانيه تتحط فيها الويدجيت
      //لكن لو حطينا فيها ال كونتينر  كده الكونتينر هيتمد
      //داخل ال جيستر ديتكتور
      //وهو اصلا مش معروفله الحجم بتاعه
      // لذلك لو عملنا كده هيعرض شاشه بيضا
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.play(AssetSource(tuneBox.tunePath));
        },
        child: Container(
          color: tuneBox.color,
          width: double.infinity,
        ),
      ),
    );
  }
}
