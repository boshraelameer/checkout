import 'package:app/view/screens/cartscreen/checkcard.dart';
import 'package:app/view/screens/cartscreen/checkout_widget.dart';
import 'package:app/view/screens/cartscreen/models/cart.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const CheckoutWidget(),
      bottomNavigationBar: const CheckoutCard(),
    );
  }

  /// helper
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text(
        "Your Cart",
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
      actions: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "${demoCarts.length} items",
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
      centerTitle: true,
      backgroundColor: Color.fromARGB(244, 102, 235, 201),
      elevation: 0.0,
    );
  }
}

class MyWidget extends StatelessWidget implements PreferredSizeWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
