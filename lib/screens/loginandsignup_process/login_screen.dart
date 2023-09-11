import 'package:figamtoflutter/bar.dart';
import 'package:figamtoflutter/util/app_style.dart';
import 'package:figamtoflutter/widgets/reusable_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                FractionallySizedBox(
                  widthFactor: 1,
                  child: SvgPicture.asset(
                    'assets/images/Vector.svg',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/Logo.png',
                    ),
                    const Text(
                      'Food Ninja',
                      style: TextStyle(
                          color: greenColor,
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Deliever Favorite Food',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Login To Your Account',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            LoginTextField(text: 'Email'),
            const SizedBox(
              height: 10,
            ),
            LoginTextField(
              text: 'Password',
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Or Continue with',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FacebookOrGoogleLogin(
                  text: 'Facebook',
                  svgUgr: 'assets/images/facebook.svg',
                ),
                FacebookOrGoogleLogin(
                  text: ' Gooogle',
                  svgUgr: 'assets/images/google.svg',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Forgot Your Password?',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Color.fromARGB(255, 76, 247, 164),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decorationColor: Color.fromARGB(255, 76, 247, 164),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return BottomBarPage();
                }))
              },
              child: const ReusableBtn(
                txt: 'Login',
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

class FacebookOrGoogleLogin extends StatelessWidget {
  final String text;
  final String svgUgr;
  const FacebookOrGoogleLogin(
      {super.key, required this.text, required this.svgUgr});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(237, 253, 233, 233)),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(svgUgr),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class LoginTextField extends StatelessWidget {
  String text;

  LoginTextField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(color: Color.fromARGB(237, 253, 233, 233)),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: text,
          hintStyle: const TextStyle(color: textFieldHintColor, fontSize: 16),
          contentPadding: const EdgeInsets.all(20),
          border: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          enabledBorder: outlineInputBorder,
        ),
      ),
    );
  }
}
