import 'package:app_shop/providers/cart.dart';
import 'package:app_shop/providers/orders.dart';
import 'package:app_shop/providers/products.dart';
import 'package:app_shop/screens/cart_screen.dart';
import 'package:app_shop/screens/edit_product_screen.dart';
import 'package:app_shop/screens/orders_screen.dart';
import 'package:app_shop/screens/product_detail_screen.dart';
import 'package:app_shop/screens/products_overview_screen.dart';
import 'package:app_shop/screens/user_products_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: MaterialApp(
          title: " Liam Shop",
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            primaryColor: const Color.fromARGB(255, 115, 134, 149),
            selectedRowColor: const Color.fromARGB(255, 162, 82, 70),
            fontFamily: "Lato",
          ),
          home: const ProductsOverviewScreen(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
            CartScreen.routeName: (ctx) => const CartScreen(),
            OrdersScreen.routeName: (ctx) => OrdersScreen(),
            UserProductsScreen.routeName: (ctx) => const UserProductsScreen(),
            EditProductScreen.routeName: (ctx) => EditProductScreen(),
          }),
    );
  }
}
