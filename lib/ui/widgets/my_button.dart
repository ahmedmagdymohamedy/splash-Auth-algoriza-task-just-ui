import 'package:algoriza_intern_task_1/utils/utils.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String title;
  Color textColor;
  Color backgroundColor;
  double borderRadus;
  double textSize;
  double height;
  double width;
  VoidCallback onTap;
  FontWeight fontWeight;

  MyButton({
    required this.title,
    this.textColor = Colors.white,
    this.backgroundColor = Utils.appPrimaryColor,
    this.borderRadus = 12,
    this.textSize = 14,
    this.height = 50,
    this.width = double.infinity,
    required this.onTap,
    this.fontWeight = FontWeight.bold,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadus),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: textSize,
              color: textColor,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
