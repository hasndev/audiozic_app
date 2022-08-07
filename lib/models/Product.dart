import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/Product_1.png",
    title: "Beats Solo3",
    price: 165,
    bgColor: Color.fromRGBO(110, 60, 196, 0.2),
  ),
  Product(
    image: "assets/images/Product_2.png",
    title: "Beats Solo Pro",
    price: 99,
    bgColor: Color.fromRGBO(224, 15, 55, 0.1),
  ),
  Product(
    image: "assets/images/Product_3.png",
    title: "Beats Solo",
    price: 180,
    bgColor: const Color.fromRGBO(229, 235, 245, 0.1),
  ),
  Product(
    image: "assets/images/Product_4.png",
    title: "Beats EP",
    price: 149,
    bgColor: Color.fromRGBO(218, 57, 132, 0.1),
  ),
];
