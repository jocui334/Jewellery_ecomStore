import 'package:ecommerce_shop/Jewel.dart';
import 'package:ecommerce_shop/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItemTile extends StatefulWidget {
  final Jewel jewel;
  const CartItemTile({super.key, required this.jewel});

  @override
  State<CartItemTile> createState() => _CartItemTileState();
}

class _CartItemTileState extends State<CartItemTile> {
  void removeFromCart() {
    Provider.of<Cart>(context, listen: false).removeFromCart(widget.jewel);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        contentPadding: EdgeInsets.all(6),
        tileColor: Colors.white30,
        hoverColor: Colors.black26,
        leading: Container(
          decoration: BoxDecoration(color: Colors.white54),
          child: Image.asset(widget.jewel.imagePath),
        ),
        title: Text(
          widget.jewel.description,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        subtitle: Text(widget.jewel.price + " PKR"),
        trailing: IconButton(
          onPressed: removeFromCart,
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
