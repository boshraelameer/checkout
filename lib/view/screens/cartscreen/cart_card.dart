import 'package:app/view/screens/cartscreen/models/cart.dart';
import 'package:app/view/screens/constrains/constansts.dart';
import 'package:app/view/screens/cartscreen/size_config.dart';
import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    // Text(
    //   'Cart Items',
    //   style: TextStyle(
    //     color: Colors.black,
    //   ),
    // );
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 223, 248, 242),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 88,
              child: AspectRatio(
                aspectRatio: 0.88,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 227, 229),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenWidth(15),
                horizontal: getProportionateScreenWidth(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cart.product.title,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      text: "\$${cart.product.price}",
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(161, 0, 0, 0)),
                      children: [
                        TextSpan(
                          text: " x${cart.numOfItem}",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
