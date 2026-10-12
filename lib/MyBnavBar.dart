import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBnavBar extends StatelessWidget {
  final void Function(int)? onTabChangeFunc;
  const MyBnavBar({super.key, required this.onTabChangeFunc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: GNav(
        color: Colors.black38,
        activeColor: Colors.pink[400],
        tabActiveBorder: Border.all(color: Colors.white12),
        tabBackgroundColor: Colors.white10,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 12,

        onTabChange: (value) => onTabChangeFunc!(value),
        tabs: [
          GButton(icon: Icons.home, text: "Shop"),
          GButton(icon: Icons.shopping_cart, text: "Cart"),
        ],
      ),
    );
  }
}
