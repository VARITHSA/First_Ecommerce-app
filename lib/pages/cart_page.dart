import 'package:flutter/material.dart';
import 'package:intro/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/drawer.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.canvasColor,
      appBar: AppBar(
        backgroundColor: context.theme.canvasColor,
        title: "Cart".text.xl2.make(),
      ),
      body: Column(
        children: [
          const _CartList().p32().expand(),
          const Divider(),
          const _CartTotal(),
        ],
      ),
      drawer: const MyDrawer(),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "₹1000".text.xl5.color(context.theme.accentColor).make(),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: "Buying not supported yet".text.make()));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor)),
                  child: "BUY".text.white.make())
              .w32(context)
        ],
      ),
    );
  }
}

// ignore: unused_element
class _CartList extends StatefulWidget {
  const _CartList({Key? key}) : super(key: key);

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  final _cart = MangaModel.items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.length,
      itemBuilder: ((context, index) => ListTile(
            leading: const Icon(Icons.done),
            trailing: IconButton(
                onPressed: (() {}),
                icon: const Icon(Icons.remove_circle_outline_outlined)),
            // title: _cart.[index].name.text.make(),
            title: _cart[index].name.text.make(),
          )),
    );
  }
}
