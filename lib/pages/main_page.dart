import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sasta_stay_dealer/pages/bookings_page.dart';
import 'package:sasta_stay_dealer/pages/profile_page.dart';
import 'package:sasta_stay_dealer/pages/rooms_page.dart';

import '../utils/custom_colors.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 0;
  var _selectedPageIndex = 0;
  late List<Widget> _pages;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _selectedPageIndex = 0;
    _pages = [
      const HomePage(),
      const RoomsPage(),
      const BookingsPage(),
      const ProfilePage(),
    ];
    _pageController = PageController(initialPage: _selectedPageIndex);
  }

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(_selectedIndex);
    });
  }

  Future<bool> _onWillPop() async {
    if (_selectedIndex != 0) {
      setState(() {
        _selectedIndex = 0;
        _pageController.jumpToPage(0);
      });
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:_onWillPop,
      child: Scaffold(
        backgroundColor: CustomColors.white,
        body: SafeArea(top: true,child:PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: _pages,
        )
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: CustomColors.white,
          selectedItemColor: CustomColors.primary,
          unselectedIconTheme: const IconThemeData(
            color: Colors.black,
          ),
          unselectedItemColor: Colors.black.withOpacity(0.5),
          selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 10,
              fontFamily: 'Inter',
              color: CustomColors.primary),
          unselectedLabelStyle: const TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/home.png',
                width: 20,
                height: 20,
                color: _selectedIndex == 0
                    ? CustomColors.primary
                    : Colors.black.withOpacity(0.5),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/category.png',
                width: 20,
                height: 20,
                color: _selectedIndex == 1
                    ? CustomColors.primary
                    : Colors.black.withOpacity(0.5),
              ),
              label: 'Inventory',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/orders.png',
                width: 20,
                height: 20,
                color: _selectedIndex == 2
                    ? CustomColors.primary
                    : Colors.black.withOpacity(0.5),
              ),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/profile.png',
                width: 20,
                height: 20,
                color: _selectedIndex == 3
                    ? CustomColors.primary
                    : Colors.black.withOpacity(0.5),
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
