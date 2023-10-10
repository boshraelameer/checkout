import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title;
  final List<String> images;
  final List<Color> colors;
  final double price;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    required this.title,
    required this.price,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "lib/ssets/images/1.jpg"
    ],
    colors: const [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Sandwich",
    price: 50,
  ),
  Product(
    id: 2,
    images: [
      "lib/assets/images/download.jpg"
    ],
    colors: const [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Pizza",
    price: 100,
  ),
  Product(
    id: 3,
    images: ["lib/assets/images/download.jpg"],
    colors: const [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Pasta",
    price: 80,
  ),
];
