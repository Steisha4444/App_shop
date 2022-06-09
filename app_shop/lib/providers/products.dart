import 'package:app_shop/providers/product.dart';
import 'package:flutter/material.dart';

class Products with ChangeNotifier {
  final List<Product> _products = [
    Product(
      id: "p1",
      title: "Red Scarf",
      description:
          "This Pashmina is great as a cold weather scarf for keeping neck warm or ideal as a wrap for wedding or evening event. ",
      price: 200,
      imageUrl:
          "https://img.joomcdn.net/8adeda4d8d390c5cfe8884a64a58e9d99960469a_original.jpeg",
    ),
    Product(
      id: "p2",
      title: "Purple Bag",
      description:
          "A structured shoulder bag in smooth leather, accented with our Thomas Burberry Monogram. The versatile design features an adjustable shoulder strap. ",
      price: 1200,
      imageUrl:
          "https://www.charleskeith.com/dw/image/v2/BCWJ_PRD/on/demandware.static/-/Sites-ck-products/default/dwff5a53fe/images/hi-res/2022-L2-CK2-50270840-49-1.jpg?sw=1152&sh=1536",
    ),
    Product(
      id: "p3",
      title: "Black Ring",
      description:
          "Made in Tungsten Carbide, one of the toughest materials known to man, the Devotion I Love You Black Wedding Ring .",
      price: 340.5,
      imageUrl:
          "https://ak1.ostkcdn.com/images/products/is/images/direct/14cbc30e12fc22315a10535f6fdf5f02f0f58b50/Thorsten-Valiant-%7C-Tungsten-Rings-for-Men-%7C-Black-Tungsten-%7C-Comfort-Fit-%7C-Wedding-Ring-Band-with-Black-Sapphires---8mm.jpg",
    ),
    Product(
      id: "p4",
      title: "Coffee bag",
      description:
          "Eco coffee bag is a custom coffee bag manufacturer from China, cheap price and good quality.",
      price: 140.5,
      imageUrl:
          "https://images.squarespace-cdn.com/content/v1/5811b29bb8a79b740e329a5c/1627028748602-HOJGAMH8X8KK2VDP6ONC/matte-coffee-bag-mockup-template.png?format=2500w",
    ),
  ];

  List<Product> get products {
    // if (_showFavoritesOnly) {
    //   return _products.where((element) => element.isFavorite).toList();
    // }
    return [..._products];
  }

  List<Product> get favoriteItems {
    return _products.where((element) => element.isFavorite).toList();
  }

  Product findById(String id) {
    return _products.firstWhere((element) => element.id == id);
  }

  void addProduct() {
    // _products.add(value);
    notifyListeners();
  }
}
