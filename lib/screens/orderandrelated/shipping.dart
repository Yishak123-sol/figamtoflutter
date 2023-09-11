import 'package:figamtoflutter/util/app_style.dart';
import 'package:figamtoflutter/widgets/place_order.dart';
import 'package:figamtoflutter/widgets/top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Shipping extends StatelessWidget {
  const Shipping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Column(
              children: [
                Top(
                  text: 'Shipping',
                ),
                SizedBox(
                  height: 20,
                ),
                Rcontainer(),
                SizedBox(
                  height: 20,
                ),
                RRcontainer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Rcontainer extends StatelessWidget {
  const Rcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 242, 237, 237)),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        height: 130,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Order Location',
                style: TextStyle(fontSize: 22, color: Color(0xFF3B3B3B)),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/Location.svg',
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kazybek Bi 43, Almaty, medeu',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'district 050010',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
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

class RRcontainer extends StatelessWidget {
  const RRcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 242, 237, 237)),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        height: 170,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Deliver To',
                style: TextStyle(fontSize: 22, color: Color(0xFF3B3B3B)),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/Location.svg',
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kazybek Bi 43, Almaty, medeu',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'district 050010',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(left: 50),
                child: const Text(
                  'Set Location',
                  style: TextStyle(color: greenColor, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
