import 'package:flutter/material.dart';
import 'Jewel.dart';

class JewelTile extends StatelessWidget {
  //created a jewel class in a separate file
  //create jewel object

  final Jewel jewel;
  final void Function()? onPressed;
  //pass in jewel object in constructor
  const JewelTile({super.key, required this.jewel, required this.onPressed()});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //jewellery image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(jewel.imagePath),
          ), //ClipRRect- to curve image corners
          //description
          Text(
            jewel.description,
            style: TextStyle(color: Colors.black54, fontSize: 10),
          ),

          //price + add to cart plus button in one row
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  jewel.price + " pkr",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink[400],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () => onPressed?.call(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
