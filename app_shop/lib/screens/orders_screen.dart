import 'package:app_shop/providers/orders.dart' show Orders;
import 'package:app_shop/widgets/app_drawer.dart';
import 'package:app_shop/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = "/orders";
  OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your orders"),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemBuilder: (ctx, i) => OrderItem(
          ordersData.orders[i],
        ),
        itemCount: ordersData.orders.length,
      ),
    );
  }
}
