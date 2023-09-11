import 'package:figamtoflutter/widgets/reusable_btn.dart';
import 'package:flutter/material.dart';

import '../loginandsignup_process/signup_screen.dart';

class ThirdOnBoardingScreen extends StatelessWidget {
  const ThirdOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/images/thirdonboard.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 384,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Column(
                  children: [
                    Text(
                      'Food Ninja is Where Your',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Comfort Food Lives',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Column(
                  children: [
                    Text(
                      'Enjoy a fast and smooth food delivery at',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'your doorstep',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: GestureDetector(
                  onTap: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return const SignUpScteen();
                        }))
                      },
                  child: const ReusableBtn(txt: 'Next',)),
            ),
          ],
        ),
      ),
    );
  }
}
