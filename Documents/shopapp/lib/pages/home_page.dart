import 'package:flutter/material.dart';
import 'package:shopapp/components/bottom_nav_bar.dart';
import 'package:shopapp/pages/cart_page.dart';
import 'package:shopapp/pages/shop_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    const ShopPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyButtonNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) =>            
              IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }, 
              icon: const Padding(
                padding: EdgeInsets.only(left:12),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                  ),
              ),
              ),  
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/download.png',
                    )
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(
                color: Colors.black,
              ),
            ),

             const Padding(
               padding: EdgeInsets.only(left:25),
               child: ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Home',
                  style:TextStyle(color: Colors.black),
                  ),
               ),
             ),

             const Padding(
               padding: EdgeInsets.only(left:25),
               child: ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  'About',
                  style:TextStyle(color: Colors.black),
                  ),
               ),
             ),

             const Padding(
               padding: EdgeInsets.only(left:25, bottom:25),
               child: ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  'Logout',
                  style:TextStyle(color: Colors.black),
                  ),
               ),
             ),
          ],
        ),
      ),
      body: pages[_selectedIndex],
    );
  }
}