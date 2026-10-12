import 'package:flutter/material.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular"),
        backgroundColor: Colors.pink[400],
      ),
      body: const Center(
        child: Text("Popular Jewellery", style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
