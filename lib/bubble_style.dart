import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

class BubbleCustomStyle {
  static const styleReceiver = BubbleStyle(
     margin: const BubbleEdges.only(top: 10),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop,
          showNip: false,
  );
  static const styleSender = BubbleStyle(
    margin: const BubbleEdges.only(top: 10),
    alignment: Alignment.topRight,
    nip: BubbleNip.rightTop,
    showNip: false,
    color: const Color.fromRGBO(225, 255, 199, 1),
  );
}
