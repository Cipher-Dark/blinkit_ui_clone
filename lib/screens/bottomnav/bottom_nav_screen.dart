import 'package:blinkit_clone/screens/cart/cart_screen.dart';
import 'package:blinkit_clone/screens/category/category_screen.dart';
import 'package:blinkit_clone/screens/home/home_screen.dart';
import 'package:blinkit_clone/screens/print/print_screen.dart';
import 'package:blinkit_clone/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: UiHelper.customImage(
                img: "home 1.png",
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: UiHelper.customImage(
                img: "shopping-bag 1.png",
              ),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: UiHelper.customImage(
                img: "category 1.png",
              ),
              label: "Category"),
          BottomNavigationBarItem(
              icon: UiHelper.customImage(
                img: "printer 1.png",
              ),
              label: "Print"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
    );
  }
}
