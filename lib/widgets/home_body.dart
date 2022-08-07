import 'package:audiozic_app/constants.dart';
import 'package:audiozic_app/widgets/new_product.dart';
import 'package:audiozic_app/widgets/popular.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                      horizontal: widthPadding / 1.7),
                  decoration: const BoxDecoration(
                    color: BgColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: const [
                        NewProduct(),
                        Popular(),
                        SizedBox(
                          height: heightPadding,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
