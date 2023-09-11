import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Top extends StatelessWidget {
  final String text;
  const Top({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
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
                      child: SvgPicture.asset('assets/images/Path.svg'),
                    ),
                  ),
                ),
              ],
            ),
            SvgPicture.asset('assets/images/smallVector.svg'),
          ],
        ),
        Positioned(
          top: 90,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
