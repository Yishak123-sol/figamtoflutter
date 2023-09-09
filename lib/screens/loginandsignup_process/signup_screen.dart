import 'package:figamtoflutter/bar.dart';
import 'package:figamtoflutter/model/reusable_btn.dart';
import 'package:figamtoflutter/screens/loginandsignup_process/login_screen.dart';
import 'package:figamtoflutter/util/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScteen extends StatelessWidget {
  const SignUpScteen({super.key});

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
                      'Sign Up',
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
            const SignUpTextField(
              text: 'Anamwp . . |',
              iconName: 'assets/images/Profile.svg',
            ),
            const SizedBox(
              height: 10,
            ),
            const SignUpTextField(
              text: 'Email',
              iconName: 'assets/images/Message.svg',
            ),
            const SizedBox(
              height: 10,
            ),
            const SignUpTextFieldForPassword(),
            const SizedBox(
              height: 20,
            ),
            const ReusableRow(
              text: 'Keep Me Signed In',
            ),
            const SizedBox(
              height: 10,
            ),
            const ReusableRow(
              text: 'Email Me About Special Pricing',
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
               onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return  BottomBarPage();
                }))
              },
              child: const ReusableBtn(
                txt: 'Creat Account',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const LoginScreen();
                }))
              },
              child: const Text(
                'already have an account?',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color.fromARGB(255, 76, 247, 164),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  decorationColor: Color.fromARGB(255, 76, 247, 164),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableRow extends StatelessWidget {
  final String text;
  const ReusableRow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 12,
            backgroundColor: greenColor,
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 15,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(
                color: Color.fromARGB(255, 116, 114, 114), fontSize: 16),
          )
        ],
      ),
    );
  }
}

class SignUpTextField extends StatelessWidget {
  final String text;
  final String iconName;

  const SignUpTextField(
      {super.key, required this.text, required this.iconName});

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
            prefixIcon: Transform.scale(
                scale: 0.6, // Adjust the scale factor here
                child: SvgPicture.asset(
                  iconName,
                )),
            fillColor: Colors.white,
            filled: true,
            hintText: text,
            hintStyle: const TextStyle(color: textFieldHintColor, fontSize: 16),
            contentPadding: const EdgeInsets.all(20),
            border: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            disabledBorder: outlineInputBorder),
      ),
    );
  }
}

class SignUpTextFieldForPassword extends StatelessWidget {
  const SignUpTextFieldForPassword({super.key});

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(color: Color.fromARGB(237, 253, 233, 233)),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Transform.scale(
                scale: 0.6, // Adjust the scale factor here
                child: SvgPicture.asset(
                  'assets/images/Show.svg',
                )),
          ),
          prefixIcon: Transform.scale(
              scale: 0.6, // Adjust the scale factor here
              child: SvgPicture.asset(
                'assets/images/Lock.svg',
              )),
          fillColor: Colors.white,
          filled: true,
          hintText: 'Password',
          hintStyle: const TextStyle(color: textFieldHintColor, fontSize: 16),
          contentPadding: const EdgeInsets.all(20),
          border: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          disabledBorder: outlineInputBorder,
        ),
      ),
    );
  }
}
