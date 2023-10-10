import 'dart:js';

import 'package:app/view/screens/cartscreen/cartscreen.dart';
import 'package:app/view/screens/checkout/chekoutscreeen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  CartScreen.routeName: (context) => CartScreen(),
  CkeckOutScreen.routeName: (context) => CkeckOutScreen(),
};
