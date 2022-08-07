import 'package:audiozic_app/constants.dart';
import 'package:audiozic_app/widgets/home_body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<mainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {}, icon: Image.asset('assets/images/menu.png')),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/audiozic.png'),
            const SizedBox(width: widthPadding / 3.2),
            const Text(
              'Audiozic',
              style: TextStyle(color: PrimaryColor),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: HomeBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: PrimaryColor,
        unselectedItemColor: Color.fromARGB(255, 170, 170, 170),
        iconSize: 30,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: "",
          ),
        ],
      ),
    );
  }
}
