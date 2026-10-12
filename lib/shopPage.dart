import 'package:ecommerce_shop/JewelTile.dart';
import 'package:ecommerce_shop/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Jewel.dart';

class shopPage extends StatefulWidget {
  const shopPage({super.key});

  @override
  State<shopPage> createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {
  void addJewelToCart(Jewel jewel) {
    Provider.of<Cart>(context, listen: false).addToCart(jewel);

    //alert the user after item is added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          "Added Successfully!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        content: Text("Check your cart."),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => ListView(
        children: [
          Column(
            children: [
              //search bar
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Search"), Icon(Icons.search)],
                    ),
                  ),
                ),
              ),
              //title
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hot Picks",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("See All", style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),

              //images
              SizedBox(
                height: 500,
                child: ListView.builder(
                  itemCount: 4, //loops through Jewel list
                  scrollDirection: Axis.horizontal,

                  //consumer will help us to return the list in Cart class by getter method (by 'value')
                  itemBuilder: (context, index) {
                    Jewel jewel1 = value.getJewelList()[index];

                    return JewelTile(
                      jewel: jewel1,
                      onPressed: () => addJewelToCart(jewel1),
                    ); //its created we just need to access it through provider (See top)
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
