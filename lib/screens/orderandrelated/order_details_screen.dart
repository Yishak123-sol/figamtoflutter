import 'package:figamtoflutter/data/order_data_data.dart';
import 'package:figamtoflutter/model/order.dart';
import 'package:figamtoflutter/util/app_style.dart';
import 'package:figamtoflutter/widgets/place_order.dart';
import 'package:figamtoflutter/widgets/top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Order> orderss = orders;
    final List<Widget> ordersContainer = [];

    for (Order order in orderss) {
      final row = Slidable(
        endActionPane: ActionPane(motion: const ScrollMotion(), children: [
          SlidableAction(
            autoClose: true,
            padding: const EdgeInsets.symmetric(vertical: 30),
            onPressed: ((context) {}),
            backgroundColor: const Color(0xFFFEAD1D),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
        ]),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 140,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border:
                  Border.all(color: const Color.fromARGB(237, 253, 233, 233))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(order.imageUrl),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          order.foodName,
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          order.restorant,
                          style: const TextStyle(
                              fontSize: 22,
                              color: Color.fromARGB(255, 177, 175, 175)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          order.price,
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: greenColor),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 247, 243, 239),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Center(
                        child: SvgPicture.asset('assets/images/Path22.svg'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      order.quantity,
                      style: const TextStyle(fontSize: 25),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        color: greenColor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Center(
                        child: SvgPicture.asset('assets/images/Path1.svg'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );

      ordersContainer.add(row);
      ordersContainer.add(const SizedBox(
        height: 10,
      ));
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Top(
                      text: 'Order details',
                    ),
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: ordersContainer,
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const PlaceMyOrder(),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
