import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
                width: double.infinity,
                child: SvgPicture.asset(
                  'assets/Vector.svg',
                  color: const Color.fromRGBO(129, 249, 239, 0.224),
                )),
          ),
          const Text('solomon'),
          Flexible(
            flex: 1,
            child: Container(),
          )
        ],
      ),
    );
  }
}
