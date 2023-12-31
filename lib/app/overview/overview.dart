<<<<<<< HEAD:lib/app/overview.dart
import 'package:benji_vendor/back_office/order/order_controller.dart';
import 'package:benji_vendor/back_office/ratings/rating_controller.dart';
import 'package:benji_vendor/theme/colors.dart';
import 'package:benji_vendor/utility/operations.dart';
import 'package:flutter/material.dart';

import '../back_office/category/category_controller.dart';
import '../back_office/my_product/my_product_controller.dart';
import '../back_office/notification/notification_controller.dart';
import 'dashboard/dashboard.dart';
import 'orders/orders.dart';
import 'product/product.dart';
import 'profile/profile.dart';
=======
import 'package:flutter/material.dart';

import '../../theme/colors.dart';
import '../dashboard/dashboard.dart';
import '../orders/orders.dart';
import '../product/product.dart';
import '../profile/profile.dart';
>>>>>>> 2bb7c5da8b76930a1131e8b80be36410a7739dcd:lib/app/overview/overview.dart

class OverView extends StatefulWidget {
  const OverView({super.key});

  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Dashboard(),
    Orders(),
    Product(),
    Profile(),
  ];

  void _onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      backgroundColor: kPrimaryColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kPrimaryColor,
        currentIndex: _currentIndex,
        onTap: _onTappedBar,
        elevation: 20.0,
        selectedItemColor: kAccentColor,
        selectedIconTheme: IconThemeData(
          color: kAccentColor,
        ),
        showSelectedLabels: true,
        unselectedItemColor: const Color(
          0xFFBDBDBD,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Color(
            0xFFBDBDBD,
          ),
        ),
        showUnselectedLabels: true,
        enableFeedback: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_view,
            ),
            label: "Overview",
            activeIcon: Icon(
              Icons.grid_view_rounded,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: "Orders",
            activeIcon: Icon(
              Icons.shopping_bag_rounded,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: "Products",
            activeIcon: Icon(
              Icons.menu_rounded,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
            ),
            label: "Profile",
            activeIcon: Icon(
              Icons.person_2_rounded,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Operations.readAll(context);
    });
  }
}
