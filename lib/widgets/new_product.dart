import 'package:audiozic_app/constants.dart';
import 'package:audiozic_app/models/Category.dart';
import 'package:audiozic_app/models/Product.dart';
import 'package:audiozic_app/widgets/category_card.dart';
import 'package:audiozic_app/widgets/details_screen.dart';
import 'package:audiozic_app/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: heightPadding / 1.7,
        ),
        Text(
          'Choose Brand',
          style: TextStyle(
            color: Color.fromARGB(255, 110, 110, 110),
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: heightPadding,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_category.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: widthPadding / 3.2),
                child: CategoryCard(
                  press: () {},
                  icon: demo_category[index].icon,
                  title: demo_category[index].title,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: heightPadding,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Beats Products',
              style: TextStyle(
                color: Color.fromARGB(255, 110, 110, 110),
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: heightPadding,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  demo_product.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: ProductCard(
                      image: demo_product[index].image,
                      title: demo_product[index].title,
                      bgcolor: demo_product[index].bgColor,
                      price: demo_product[index].price,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                product: demo_product[index],
                              ),
                            ));
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
