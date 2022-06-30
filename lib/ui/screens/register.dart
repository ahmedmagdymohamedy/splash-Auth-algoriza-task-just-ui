import 'package:algoriza_intern_task_1/ui/widgets/help.dart';
import 'package:algoriza_intern_task_1/ui/widgets/my_button.dart';
import 'package:algoriza_intern_task_1/ui/widgets/my_input_field.dart';
import 'package:algoriza_intern_task_1/utils/utils.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/imgs/flat background.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: SafeArea(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Utils.myDarkGray,
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.only(start: 6),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome to Fashion Daily',
                  style: TextStyle(
                    color: Utils.myGray,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: const [
                    Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Help(),
                  ],
                ),
                const SizedBox(height: 22),
                MyInputField(
                  title: 'Email',
                  onChange: (e) {},
                  hint: 'example@email.com',
                ),
                const SizedBox(height: 20),
                MyInputField(
                  title: 'Phone Number',
                  onChange: (e) {},
                  hint: '011x xxxx xxx',
                ),
                const SizedBox(height: 20),
                MyInputField(
                  title: 'Password',
                  onChange: (e) {},
                  isPassword: isPassword,
                  extraWidgetOnEnd: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye),
                  ),
                  hint: 'Password',
                ),
                const SizedBox(height: 20),
                MyButton(
                  title: 'Register',
                  onTap: () {},
                  borderRadus: 4,
                  backgroundColor: Utils.myBlue,
                  height: 40,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 2,
                        width: double.infinity,
                        color: Utils.myGray.withOpacity(0.2),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Or',
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        width: double.infinity,
                        color: Utils.myGray.withOpacity(0.2),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Utils.myBlue),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/imgs/google.jpg',
                        width: 20,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Sigh in by google',
                        style: TextStyle(
                          fontSize: 12,
                          color: Utils.myBlue,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Has any account ? "),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Sigh in here",
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  "Use the aplication according to policy rules, Any kinds of violation will be subject to sancation.",
                  style: TextStyle(
                    color: Utils.myGray,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
              ],
            ),
          )
        ],
      ),
    );
  }
}
