import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontsize;
  final FontWeight? fontweight;
  final Color? color;
  CustomText({
    super.key,
    required this.text,
    this.fontsize,
    this.fontweight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontweight, //FontWeight.w800
        fontSize: fontsize, //20
      ),
    );
  }
}
