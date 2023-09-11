import 'package:figamtoflutter/widgets/top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditPayment extends StatelessWidget {
  const EditPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const Top(
                  text: 'Payment',
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                const RRcontainer(
                  width: 25,
                  height: 25,
                  svgUrl: 'assets/images/paypal.svg',
                  color: Colors.white,
                  colors: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
                const RRcontainer(
                  width: 60,
                  height: 60,
                  svgUrl: 'assets/images/visa.svg',
                  color: Color(0xFFF6F6F6),
                  colors: Color.fromARGB(255, 172, 170, 170),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6F6F6),
                      border: Border.all(
                          color: const Color.fromARGB(255, 242, 237, 237)),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    height: 80,
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xFFF6F6F6),
                                  ),
                                  Positioned(
                                      left: 0,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Color(0xFFEB001B),
                                      )),
                                  Positioned(
                                      left: 19,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Color(0xFFF79E1B),
                                      )),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '2121634656***',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 172, 170, 170)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RRcontainer extends StatelessWidget {
  final Color color;
  final String svgUrl;
  final double width;
  final double height;
  final Color colors;

  const RRcontainer(
      {super.key,
      required this.color,
      required this.svgUrl,
      required this.height,
      required this.width,
      required this.colors});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: const Color.fromARGB(255, 242, 237, 237)),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        height: 80,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    svgUrl,
                    width: width,
                    height: height,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '2121634656***',
                    style: TextStyle(fontSize: 16, color: colors),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
