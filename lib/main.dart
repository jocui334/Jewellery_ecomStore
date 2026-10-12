import 'package:ecommerce_shop/PopularPage.dart';
import 'package:ecommerce_shop/cart.dart';
import 'package:ecommerce_shop/homepage.dart';
import 'package:ecommerce_shop/introPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) =>
        Cart(), //cart class will extend ChangeNotifier (used when state is changed in add or remove from cart functions in the Cart class)
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const introPage(),
      routes: {
        '/homepage': (context) => const HomePage(),
        '/popular': (context) => const PopularPage(),
        '/intro': (context) => const introPage(),
      },
    ),
  );
}
