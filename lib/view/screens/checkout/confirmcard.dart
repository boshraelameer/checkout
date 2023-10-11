import 'package:app/view/screens/cartscreen/cartscreen.dart';
import 'package:app/view/screens/cartscreen/size_config.dart';
import 'package:app/view/screens/checkout/chekoutscreeen.dart';
import 'package:flutter/material.dart';

class ConfirmCard extends StatelessWidget {
  const ConfirmCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Color.fromARGB(108, 129, 216, 151),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(30)),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text.rich(
                  TextSpan(
                    text: "Total:\n",
                    children: [
                      TextSpan(
                        text: "\$335",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const CkeckOutScreen()),
                      ),
                    );
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Dialog(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                const Text(
                                  'Your order has been confirmed',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 15),
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width*0.40,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: ((context) =>
                                                const CartScreen()),
                                          ),
                                        );
                                      }, child: const Text('ok')),
                                ),
                                    const SizedBox(
                                  height: 50,
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  style: TextButton.styleFrom(backgroundColor: Color.fromARGB(155, 51, 187, 153)),
                  child: const Text(
                    'Confirm odrder',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
