import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rento/utility_funtions.dart/size.dart';

import 'cart_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 2,
          itemBuilder: (context, index) {
            return Column(
              children: const [
                CartCard(),
                Hbox(14),
              ],
            );
          }),
    );
  }
}
