import 'package:flutter/material.dart';
import 'package:intro/pages/home_details_page.dart';
import 'package:intro/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/catalog.dart';
import '../../widgets/themes.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: MangaModel.items.length,
      itemBuilder: (context, index) {
        final catalog = MangaModel.items[index];
        return InkWell(
            onTap: (() => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetails(catalog: catalog)))),
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(
            image: catalog.image,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.bold.xl.color(context.theme.accentColor).make(),
            catalog.disc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "₹${catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.detailsRoute);
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          context.theme.buttonColor,
                        ),
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                    child: "Add to cart".text.make())
              ],
            ).pOnly(right: 8.0),
          ],
        )),
      ],
    )).color(context.cardColor).roundedLg.square(170).make().py16();
  }
}
