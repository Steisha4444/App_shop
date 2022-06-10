import 'package:app_shop/providers/products.dart';
import 'package:app_shop/screens/edit_product_screen.dart';
import 'package:app_shop/widgets/app_drawer.dart';
import 'package:app_shop/widgets/user_product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = "/user-products";

  const UserProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your products"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(EditProductScreen.routeName);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemBuilder: (_, i) => Column(
            children: [
              UserProductItem(
                productsData.products[i].title,
                productsData.products[i].imageUrl,
              ),
              Divider(),
            ],
          ),
          itemCount: productsData.products.length,
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
