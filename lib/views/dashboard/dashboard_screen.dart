import 'package:chopmoni_customer_app/config/constants_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/menu_list.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

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
      body: GridView(
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
      ),
    );
  }
}
