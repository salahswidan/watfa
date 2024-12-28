import 'package:flutter/material.dart';
import '../discount/presentation/screen/discount_screen.dart';
import '../home/presentation/screen/home_screen.dart';
import '../payment_home/presentation/screen/payment_home_screen.dart';
import '../profile/presentation/screen/profile_screen.dart';
import '../purchases/presentation/screen/purchases_screen.dart';
import 'widgets/active_bottom_navigation_bar_item.dart';
import 'widgets/custom_bottom_navigation_bar_item.dart';
import 'widgets/in_active_bottom_navigation_bar_item.dart';

class MainScreen extends StatefulWidget {
  final int intialSection;
  const MainScreen({super.key, this.intialSection = 0});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    PaymentHomeScreen(),
    DiscountScreen(),
    PurchasesScreen(),
    ProfileScreen(
      hasAppBar: false,
    )
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "",
            icon: InActiveBottomNavigationBarItem(
                image: "assets/images/home-2.png", text: "Home"),
            activeIcon: ActiveBottomNavigationBarItem(
                image: "assets/images/home-2.png", text: "Home"),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: InActiveBottomNavigationBarItem(
                image: "assets/images/Bank Cards.png", text: "Payment"),
            activeIcon: ActiveBottomNavigationBarItem(
                image: "assets/images/Bank Cards.png", text: "Payment"),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: CustomBottomNavigationBarItem(),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: InActiveBottomNavigationBarItem(
                image: "assets/images/Favorite Cart.png", text: "Purchases"),
            activeIcon: ActiveBottomNavigationBarItem(
                image: "assets/images/Favorite Cart.png", text: "Purchases"),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: InActiveBottomNavigationBarItem(
              image: "assets/images/user.png",
              text: "Profile",
            ),
            activeIcon: ActiveBottomNavigationBarItem(
              image: "assets/images/user.png",
              text: "Profile",
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
