import 'package:figamtoflutter/model/reusable_btn.dart';
import 'package:figamtoflutter/screens/onboarding_screen/third_screen.dart';
import 'package:flutter/material.dart';

class SecondOnBoardingScreen extends StatelessWidget {
  const SecondOnBoardingScreen({super.key});

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
                    'assets/images/ice_cream.png',
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
                      'Find your Comfort',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Food here',
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
                      'Here you can find a chef or dish for every',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'taste and color. Enjoy!',
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
                          return const ThirdOnBoardingScreen();
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
