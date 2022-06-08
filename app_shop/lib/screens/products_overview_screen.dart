import 'package:app_shop/models/product.dart';
import 'package:app_shop/widgets/product_item.dart';
import 'package:app_shop/widgets/products_grid.dart';
import 'package:flutter/material.dart';

class ProductsOverviewScreen extends StatelessWidget {
  ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liam Shop"),
      ),
      body: ProductGrid(),
    );
  }
}
