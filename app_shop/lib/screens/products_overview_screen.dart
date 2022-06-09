import 'package:app_shop/providers/cart.dart';
import 'package:app_shop/providers/product.dart';
import 'package:app_shop/providers/products.dart';
import 'package:app_shop/screens/cart_screen.dart';
import 'package:app_shop/widgets/app_drawer.dart';
import 'package:app_shop/widgets/badge.dart';
import 'package:app_shop/widgets/badge.dart';
import 'package:app_shop/widgets/product_item.dart';
import 'package:app_shop/widgets/products_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum FilterOptions {
  Favorites,
  All,
}

class ProductsOverviewScreen extends StatefulWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  bool _showFavorites = false;

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liam Shop"),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {});
              if (selectedValue == FilterOptions.Favorites) {
                _showFavorites = true;
              } else {
                _showFavorites = false;
              }
            },
            itemBuilder: (_) => [
              const PopupMenuItem(
                child: Text(
                  "Only favorites",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: FilterOptions.Favorites,
              ),
              const PopupMenuItem(
                child: Text(
                  "Show all",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: FilterOptions.All,
              ),
            ],
            icon: const Icon(Icons.more_vert),
          ),
          Consumer<Cart>(
            builder: (_, cartData, ch) => Badge(
              child: ch!,
              value: cartData.itemCount.toString(),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
            ),
          )
        ],
      ),
      drawer: AppDrawer(),
      body: ProductGrid(_showFavorites),
    );
  }
}
