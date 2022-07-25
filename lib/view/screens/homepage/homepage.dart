import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newkings/view/screens/homepage/ssssscreen.dart';

import '../../../controller/eamil/bottom_nav_cubit.dart';
import '../cart/wishlist.dart';
import '../settings/settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = const [
      HomeScreen(),
      ScreenWishList(),
      ScreenSetting()
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'KingsMan',
          style: TextStyle(color: Colors.yellow),
        ),
        backgroundColor: Colors.black,
      ),
      body: pages[context.watch<Counter>().pageindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.read<Counter>().pageindex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            label: ' cart',
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
        onTap: (index) {
          context.read<Counter>().navpage(index);
        },
      ),
    );
  }
}
