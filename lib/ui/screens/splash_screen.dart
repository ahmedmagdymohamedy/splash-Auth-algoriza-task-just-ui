import 'package:algoriza_intern_task_1/ui/screens/register.dart';
import 'package:algoriza_intern_task_1/ui/widgets/app_name.dart';
import 'package:algoriza_intern_task_1/ui/widgets/my_button.dart';
import 'package:algoriza_intern_task_1/utils/utils.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void onClickGetStarted() {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    title: 'Skip',
                    onTap: () {},
                    textColor: Colors.black54,
                    width: 60,
                    height: 40,
                    borderRadus: 20,
                    backgroundColor: const Color.fromARGB(255, 239, 223, 223),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const AppLogo(),
            Expanded(
              child: PageView.builder(
                itemCount: Utils.splashPagesContaint.length,
                itemBuilder: (ctx, i) => Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child:
                            Image.asset(Utils.splashPagesContaint[i]['imgurl']),
                      ),
                    ),
                    Text(
                      Utils.splashPagesContaint[i]['title'],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      Utils.splashPagesContaint[i]['supTitle'],
                      style: const TextStyle(
                          // fontSize: 14,
                          // fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MyButton(title: 'Get Started', onTap: onClickGetStarted),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const RegisterScreen()));
                    },
                    child: const Text('Sigh Up')),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
