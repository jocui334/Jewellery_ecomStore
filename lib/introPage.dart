import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView(
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('lib/images/logo.png', height: 200),
              ),

              const SizedBox(height: 35),

              //title
              Text(
                "Deco Jewels",
                style: GoogleFonts.sacramento(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 25),

              Text(
                "Your favourite pinterest jewellery!",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 25),

              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/homepage'),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.pink[400]),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Shop now",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
