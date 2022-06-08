import 'package:app_shop/providers/products.dart';
import 'package:app_shop/screens/product_detail_screen.dart';
import 'package:app_shop/screens/products_overview_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
          title: " Liam Shop",
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            primaryColor: Color.fromARGB(255, 216, 144, 19),
            selectedRowColor: Color.fromARGB(255, 168, 118, 110),
            fontFamily: "Lato",
          ),
          home: ProductsOverviewScreen(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          }),
    );
  }
}
