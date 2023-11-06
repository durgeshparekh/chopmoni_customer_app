import 'package:chopmoni_customer_app/config/constants_colors.dart';
import 'package:chopmoni_customer_app/views/dashboard/fund_wallets_screen.dart';
import 'package:chopmoni_customer_app/views/menu/menulist_screen.dart';
import 'package:chopmoni_customer_app/views/wallets/wallets_screen.dart';
import 'package:flutter/material.dart';

import '../../config/image_url.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const FundWalletScreen(),
    WalletsScreen(),
    const MenuListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        // leading: const SizedBox(),
        title: Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: blackTextColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            'M J Kitchen',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              //
            },
            child: const Text(
              'Wallet',
              style: TextStyle(color: blackTextColor),
            ),
          )
        ],
      ),
      bottomNavigationBar: widgetBottomNavigation(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ) /*GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 150,
        ),
        children: [
          MenuList(
            text: 'Menu',
            icon: const Icon(Icons.food_bank, size: 80),
            onPressed: () {
              debugPrint('Menu click');
            },
          ),
          MenuList(
            text: 'Orders',
            icon: const Icon(Icons.format_list_numbered, size: 80),
            onPressed: () {},
          ),
          MenuList(
            text: 'Payments',
            icon: const Icon(Icons.payment_rounded, size: 80),
            onPressed: () {},
          ),
          MenuList(
            text: 'Profile',
            icon: const Icon(Icons.person, size: 80),
            onPressed: () {},
          ),
        ],
      )*/
      ,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      debugPrint("-->$_selectedIndex");
    });
  }

  Widget widgetBottomNavigation() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Icon(Icons.wallet),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            orderView,
            colorFilter: ColorFilter.mode(
              (_selectedIndex == 1) ? Colors.green : Colors.grey,
              BlendMode.srcIn,
            ),
          ),
          label: 'View Orders',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.green,
      onTap: _onItemTapped,
    );
  }
}
