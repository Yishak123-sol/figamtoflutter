import 'package:figamtoflutter/screens/onboarding_screen/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstOnBoardingScreen extends StatelessWidget {
  const FirstOnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return const SecondOnBoardingScreen();
        }))
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 0,
                child: SizedBox(
                    width: double.infinity,
                    child: SvgPicture.asset(
                      'assets/images/Vector.svg',
                      fit: BoxFit.cover,
                    )),
              ),
              Image.asset(
                'assets/images/Logo.png',
              ),
              const Text(
                'Food Ninja',
                style: TextStyle(
                    color: Color.fromARGB(255, 124, 247, 129),
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Deliever Favorite Food',
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
