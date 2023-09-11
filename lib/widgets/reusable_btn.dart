import 'package:figamtoflutter/util/app_style.dart';
import 'package:flutter/material.dart';

class ReusableBtn extends StatelessWidget {
  final String txt;
  const ReusableBtn({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 55,
      decoration: BoxDecoration(
          color: greenColor, borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Text(
          txt,
          style: btnTextStyle,
        ),
      ),
    );
  }
}
