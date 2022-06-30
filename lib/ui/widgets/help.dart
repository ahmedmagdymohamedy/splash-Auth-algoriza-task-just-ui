import 'package:algoriza_intern_task_1/utils/utils.dart';
import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Help',
          style: TextStyle(
            color: Utils.myBlue,
            fontWeight: FontWeight.w300,
          ),
        ),
        Icon(
          Icons.question_mark,
          color: Utils.myBlue,
          size: 12,
        ),
      ],
    );
  }
}
