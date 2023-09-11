import 'package:figamtoflutter/bar.dart';
import 'package:figamtoflutter/util/app_style.dart';
import 'package:figamtoflutter/widgets/reusable_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpSuccesNotification extends StatelessWidget {
  const SignUpSuccesNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    FractionallySizedBox(
                      widthFactor: 1,
                      child: SvgPicture.asset(
                        'assets/images/Vector.svg',
                        color: const Color.fromARGB(255, 202, 227, 197),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      child: SvgPicture.asset(
                        'assets/images/Success.svg',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Congrats!',
                  style: TextStyle(
                      color: greenColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Your Profile Is Ready To Use',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 200,
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return BottomBarPage();
                }))
              },
              child: const ReusableBtn(
                txt: 'Try order',
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
