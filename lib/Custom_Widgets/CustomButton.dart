import 'package:flutter/material.dart';
import 'package:mychatapp/Custom_Widgets/CustomText.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color? backGroundColor;
  final Color? foreGrounCcolor;
  CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backGroundColor,
    this.foreGrounCcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 500,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(backGroundColor),
            foregroundColor: WidgetStateProperty.all(foreGrounCcolor),
          ),
          onPressed: onPressed(),
          child: CustomText(
            text: text,
            fontsize: 20,
            fontweight: FontWeight.w300,
          )),
    );
  }
}
