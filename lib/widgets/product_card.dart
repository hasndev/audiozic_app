import 'package:audiozic_app/constants.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
    required this.bgcolor,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  final int price;
  final Color bgcolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: Container(
        width: 170,
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgcolor,
                borderRadius: const BorderRadius.all(Radius.circular(50)),
              ),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  '\$$price',
                  style: TextStyle(
                    fontSize: 16,
                    color: PrimaryColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                  ),
                  child: Image.asset(
                    'assets/images/star.png',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
