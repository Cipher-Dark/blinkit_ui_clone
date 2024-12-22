import 'package:flutter/material.dart';

class UiHelper {
  static customImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static customText({
    required String text,
    required Color color,
    required FontWeight fontWeight,
    String? fontFamily,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily ?? "regular",
        fontSize: fontSize,
      ),
    );
  }
}
