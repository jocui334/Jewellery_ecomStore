import 'package:ecommerce_shop/Jewel.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of each item- object
  List<Jewel> jewelShop = [
    Jewel(
      price: '660',
      imagePath: 'lib/images/blue.png',
      description: 'cool and chic',
    ),
    Jewel(
      price: '750',
      imagePath: 'lib/images/boho.png',
      description: 'effortlessly bohemian',
    ),
    Jewel(
      price: '700',
      imagePath: 'lib/images/pink.png',
      description: 'princess pink',
    ),
    Jewel(
      price: '600',
      imagePath: 'lib/images/gold.png',
      description: 'elegant and luxurious',
    ),
  ];

  //list of items in user's cart
  List<Jewel> inCart = [];

  //get list of jewellery items for sale
  List<Jewel> getJewelList() {
    return jewelShop;
  }

  //get cart
  List<Jewel> getUserCart() {
    return inCart;
  }

  //add to cart
  void addToCart(Jewel jewel) {
    inCart.add(jewel);
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(Jewel jewel) {
    inCart.remove(jewel);
    notifyListeners();
  }
}
