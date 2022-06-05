import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:intro/models/catalog.dart';
import 'package:intro/widgets/themes.dart';

import '../widgets/drawer.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/homescreen";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get buildcontext => null;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    MangaModel.items =
        List.from(productsData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Mytheme.creamColor,
        floatingActionButton: FloatingActionButton(onPressed: () {},
        
        backgroundColor: Mytheme.darkBluish,
        child: const Icon(CupertinoIcons.cart),
        ),
        body: Container(
          padding: Vx.mV16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CatalogHeader(),
              if(MangaModel.items.isNotEmpty)
              const CatalogList().py16().expand()
              else
               const CircularProgressIndicator().centered().py16().expand(),
              
            ],
          ),
        ),
        // drawer: const MyDrawer(),
      ),
    );
  }
}






