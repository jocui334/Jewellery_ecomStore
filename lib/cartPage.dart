import 'package:ecommerce_shop/Jewel.dart';
import 'package:ecommerce_shop/cart.dart';
import 'package:ecommerce_shop/cartItemTile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              "My Cart",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  //get individual jewel item
                  Jewel jewel = value.getUserCart()[index];

                  //return the item in cart
                  return CartItemTile(
                    jewel: jewel,
                  ); //create it in separate file
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
