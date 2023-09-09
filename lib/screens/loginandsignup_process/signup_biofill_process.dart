import 'package:figamtoflutter/model/reusable_btn.dart';
import 'package:figamtoflutter/screens/loginandsignup_process/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupBioProcess extends StatelessWidget {
  const SignupBioProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 15, left: 20),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 245, 215, 180),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                          'assets/images/Path.svg'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset('assets/images/smallVector.svg'),
                          ],
                        ),
                        const Positioned(
                          top: 90,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fill in your bio to get',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Started',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('This data will be displayed in your account',
                              style: TextStyle(fontSize: 16)),
                          Text(
                            'profile for security',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LoginTextField(text: 'First Name'),
                    const SizedBox(
                      height: 10,
                    ),
                    LoginTextField(text: 'Last Name'),
                    const SizedBox(
                      height: 10,
                    ),
                    LoginTextField(text: 'Mobile Number'),
                  ],
                ),
                const SizedBox(
                  height: 90,
                ),
                const Column(
                  children: [
                    ReusableBtn(txt: 'Next'),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
