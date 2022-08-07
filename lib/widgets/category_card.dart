import 'package:audiozic_app/constants.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: OutlineButton(
        onPressed: () => press(),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 60 / 2, vertical: 42 / 2),
          child: Column(
            children: [
              Image.asset(icon),
              SizedBox(
                height: heightPadding / 3.4,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
