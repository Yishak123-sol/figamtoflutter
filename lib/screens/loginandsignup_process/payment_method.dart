import 'package:figamtoflutter/model/reusable_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

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
                                Column(
                                  children: [
                                    Text(
                                      'Payment Method',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
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
                      height: 30,
                    ),
                    const ResuableContainer(
                      text: 'assets/images/paypal.svg',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ResuableContainer(
                      text: 'assets/images/Mastercard_logo.svg',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ResuableContainer(
                      text: 'assets/images/visa.svg',
                    )
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

class ResuableContainer extends StatelessWidget {
  final String text;
  const ResuableContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border:
                Border.all(color: const Color.fromARGB(237, 253, 233, 233))),
        child: Center(
          child: SvgPicture.asset(text),
        ),
      ),
    );
  }
}
