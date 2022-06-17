// ignore_for_file: unrelated_type_equality_checks

class MangaModel {
  static List<Item> items = [];

  // Get Item by ID
  Item getById(int id) => items.firstWhere((element) => (element.id == id));

  // Get Item by position
  Item getByposition(int pos) => items[pos];
}

class Item {
  late final int id;
  final String name;
  final String disc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.disc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        disc: map["disc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "disc": disc,
        "price": price,
        "color": color,
        "image": image,
      };
}
