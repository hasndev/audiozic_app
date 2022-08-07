import 'package:audiozic_app/constants.dart';
import 'package:audiozic_app/models/Product.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: PrimaryColor),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.25,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(heightPadding / 3),
                child: Image.asset(
                  'assets/images/star.png',
                ),
              ),
              Text(
                product.title,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: heightPadding / 3,
              ),
              Text(
                '\$' + product.price.toString(),
                style: const TextStyle(
                  color: PrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: heightPadding / 3,
              ),
            ],
          ),
          const SizedBox(
            height: widthPadding / 2,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(48),
                  topRight: Radius.circular(48),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Colors',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: widthPadding / 3,
                  ),
                  Row(
                    children: [
                      ColorDot(
                        color: Color.fromRGBO(64, 35, 115, 1),
                        press: () {},
                        isActive: false,
                      ),
                      ColorDot(
                        color: Color.fromRGBO(224, 15, 131, 1),
                        press: () {},
                        isActive: false,
                      ),
                      ColorDot(
                        color: Color.fromARGB(255, 42, 199, 238),
                        press: () {},
                        isActive: false,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: heightPadding / 2,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Details',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: widthPadding / 3),
                    child: Text(
                      'Input Type: 3.5mm stereo jack Other Features: Bluetooth, Foldable, Noise Isolation, Stereo, Stereo Bluetooth, Wireless Form Factor: On-Ear Connections: Bluetooth, Wireless Speaker Configurations: Stereo',
                    ),
                  ),
                  const SizedBox(
                    height: 16 * 1.5,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: 150,
                            height: 48,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: BgColor,
                                    shape: const StadiumBorder(),
                                    elevation: 0),
                                child: const Text(
                                  'Add To Cart',
                                  style: TextStyle(color: PrimaryColor),
                                )),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 150,
                            height: 48,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: PrimaryColor,
                                    shape: const StadiumBorder(),
                                    elevation: 0),
                                child: const Text('Buy Now')),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    required this.isActive,
    required this.press,
  }) : super(key: key);
  final Color color;
  final bool isActive;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          border:
              Border.all(color: isActive ? PrimaryColor : Colors.transparent),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
