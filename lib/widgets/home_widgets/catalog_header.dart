
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Manga Catalog".text.xl4.bold.color(Mytheme.darkBluish).make().px16(),
        "Grossing Mangas".text.xl2.make().px16(),
      ],
    );
  }
}