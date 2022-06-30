import 'package:algoriza_intern_task_1/utils/utils.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '7',
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.brown[300],
          ),
        ),
        const Text(
          'Krave',
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Utils.appPrimaryColor,
          ),
        ),
      ],
    );
  }
}
