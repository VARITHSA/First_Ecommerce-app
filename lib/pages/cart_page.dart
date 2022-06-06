import 'package:flutter/material.dart';
import 'package:intro/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mytheme.creamColor,
      appBar: AppBar(
          backgroundColor: Mytheme.creamColor,
          title: Text(
            "cart",
            style: TextStyle(color: Mytheme.darkBluish),
          )),
    );
  }
}
