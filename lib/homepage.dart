import 'package:ecommerce_shop/MyBnavBar.dart';
import 'package:ecommerce_shop/cartPage.dart';
import 'package:ecommerce_shop/shopPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //integer to keep track of index that is selected
  int selected = 0;

  //method to navigate the bottom bar
  //will update the selected index when a tab is tapped
  void navBottomBar(int index) {
    setState(() {
      selected = index;
    });
  }

  //list of pages to track indexes
  final List<Widget> pages = [shopPage(), cartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      //menu side drawer
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DrawerHeader(
                child: Image.asset('lib/images/logo.png', height: 110),
              ),

              ListTile(
                leading: Icon(Icons.home_filled, color: Colors.pink[400]),
                title: Text("Home", style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.pushNamed(context, '/homepage');
                },
              ),

              ListTile(
                leading: Icon(Icons.favorite, color: Colors.pink[400]),
                title: Text("Popular", style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed(context, '/popular');
                },
              ),

              ListTile(
                leading: Icon(Icons.logout, color: Colors.pink[400]),
                title: Text("Logout", style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.pop(context);

                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.grey,
                      contentPadding: EdgeInsets.all(15),
                      title: const Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      content: const Text("Are you sure you want to leave?"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Cancel"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/intro',
                              (route) => false,
                            );
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      //navigation bar (bottom)
      bottomNavigationBar: MyBnavBar(
        onTabChangeFunc: (index) => navBottomBar(index),
      ),
      body: pages[selected],
    );
  }
}
