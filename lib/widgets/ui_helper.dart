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

  static customTextFiled({
    required TextEditingController textEditingController,
  }) {
    return Container(
      height: 40,
      width: 360,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Color(0XFFC5C5C5),
        ),
      ),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: 'Search "ice-cream"',
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.mic),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static customButtom(VoidCallback callBack) {
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0XFF27AF34)),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          "Add",
          style: TextStyle(fontSize: 8, color: Color(0XFF27AF34)),
        ),
      ),
    );
  }
}
