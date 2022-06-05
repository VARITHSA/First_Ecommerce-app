// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '../models/catalog.dart';

class itemWidget extends StatelessWidget {
  final Item item;

  const itemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.disc),
        trailing: Text("\$${item.price}",
            style: const TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
