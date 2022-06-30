import 'package:algoriza_intern_task_1/utils/utils.dart';
import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  String title;
  Function(String) onChange;
  String hint;
  Widget extraWidgetOnStart;
  Widget extraWidgetOnEnd;
  TextInputType? keyboardType;
  bool isPassword;

  MyInputField({
    required this.title,
    required this.onChange,
    this.hint = '',
    this.extraWidgetOnStart = const SizedBox(),
    this.extraWidgetOnEnd = const SizedBox(),
    this.keyboardType,
    this.isPassword = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Utils.myGray,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          width: double.infinity,
          height: 44,
          decoration: BoxDecoration(
            border: Border.all(color: Utils.myGray.withOpacity(0.2)),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              extraWidgetOnStart,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    keyboardType: keyboardType,
                    onChanged: onChange,
                    obscureText: isPassword,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hint,
                        hintStyle:
                            TextStyle(color: Utils.myGray.withOpacity(0.3))),
                  ),
                ),
              ),
              extraWidgetOnEnd,
            ],
          ),
        ),
      ],
    );
  }
}
