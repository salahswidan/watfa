import 'package:flutter/material.dart';

import 'package:watfa/core/helpers/spacing.dart';
import 'package:watfa/core/theme/colors.dart';

import '../../core/theme/styles.dart';
import '../discount/presentation/screen/discount_screen.dart';
import '../home/presentation/screen/home_screen.dart';
import '../payment/presentation/screen/payment_screen.dart';

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
    PaymentScreen(),
    DiscountScreen(),
    Text(
      'Index 2: School',
    ),
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
       
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "",
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/home-2.png", width: 24),
                verticalSpacing(5),
                Text(
                  "Home",
                  style: TextStyles.font12OuterSpaceW400Poppins(context),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/home-2.png",
                  width: 24,
                  color: ColorsManagers.purple,
                ),
                verticalSpacing(5),
                Text(
                  "Home",
                  style: TextStyles.font12PurpleW500Poppins(context),
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/Bank Cards.png", width: 24),
                verticalSpacing(5),
                Text(
                  "Payment",
                  style: TextStyles.font12OuterSpaceW400Poppins(context),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Bank Cards.png",
                  width: 24,
                  color: ColorsManagers.purple,
                ),
                verticalSpacing(5),
                Text(
                  "Payment",
                  style: TextStyles.font12PurpleW500Poppins(context),
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsManagers.purple,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset("assets/images/Star 6.png"),
                )),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.school),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

// class _MainScreenState extends State<MainScreen> {
//   late PersistentTabController _controller;
//   final List<ScrollController> _scrollControllers = [
//     ScrollController(),
//     ScrollController(),
//   ];

//   final NavBarStyle _navBarStyle = NavBarStyle.style15;
//   @override
//   void initState() {
//     _controller = PersistentTabController(initialIndex: widget.intialSection);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     for (final element in _scrollControllers) {
//       element.dispose();
//     }
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: PersistentTabView(
//           context,
//           hideNavigationBarWhenKeyboardAppears: true,
//           animationSettings: const NavBarAnimationSettings(
//             navBarItemAnimation: ItemAnimationSettings(
//               // Navigation Bar's items animation properties.
//               duration: Duration(milliseconds: 400),
//               curve: Curves.ease,
//             ),
//             screenTransitionAnimation: ScreenTransitionAnimationSettings(
//               animateTabTransition: true,
//               duration: Duration(milliseconds: 200),
//               screenTransitionAnimationType:
//                   ScreenTransitionAnimationType.fadeIn,
//             ),
//           ),
//           backgroundColor: Colors.white,
//           resizeToAvoidBottomInset: true,
//           navBarHeight: 70,
//           controller: _controller,
//           screens: const [
//             HomeScreen(),
//             HomeScreen(),
//             HomeScreen(),
//             HomeScreen(),
//             HomeScreen(),
//           ],
//           navBarStyle: _navBarStyle,
//           items: [
//             PersistentBottomNavBarItem(
//               activeColorPrimary: ColorsManagers.purple,
//               inactiveColorPrimary: ColorsManagers.outerSpace,
//               inactiveIcon: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset("assets/images/home-2.png", width: 24),
//                   verticalSpacing(5),
//                   Text(
//                     "Home",
//                     style: TextStyles.font12OuterSpaceW400Poppins(context),
//                   ),
//                 ],
//               ),
//               icon: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     "assets/images/home-2.png",
//                     width: 24,
//                     color: ColorsManagers.purple,
//                   ),
//                   verticalSpacing(5),
//                   Text(
//                     "Home",
//                     style: TextStyles.font12PurpleW500Poppins(context),
//                   ),
//                 ],
//               ),
//             ),
//             PersistentBottomNavBarItem(
//               activeColorPrimary: ColorsManagers.purple,
//               inactiveColorPrimary: ColorsManagers.outerSpace,
//               inactiveIcon: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset("assets/images/Bank Cards.png", width: 24),
//                   verticalSpacing(5),
//                   Text(
//                     "Payment",
//                     style: TextStyles.font12OuterSpaceW400Poppins(context),
//                   ),
//                 ],
//               ),
//               icon: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     "assets/images/Bank Cards.png",
//                     width: 24,
//                     color: ColorsManagers.purple,
//                   ),
//                   verticalSpacing(5),
//                   Text(
//                     "Payment",
//                     style: TextStyles.font12PurpleW500Poppins(context),
//                   ),
//                 ],
//               ),
//             ),
//             PersistentBottomNavBarItem(
//               activeColorPrimary: ColorsManagers.purple,
//               inactiveColorPrimary: ColorsManagers.outerSpace,
//               icon: Image.asset(
//                 "assets/images/Star 6.png",
//                 width: 24,
//               ),
//             ),
//             PersistentBottomNavBarItem(
//               activeColorPrimary: ColorsManagers.purple,
//               inactiveColorPrimary: ColorsManagers.outerSpace,
//               inactiveIcon: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset("assets/images/Favorite Cart.png", width: 24),
//                   verticalSpacing(5),
//                   Text(
//                     "Purchases",
//                     style: TextStyles.font12OuterSpaceW400Poppins(context),
//                   ),
//                 ],
//               ),
//               icon: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     "assets/images/Favorite Cart.png",
//                     width: 24,
//                     color: ColorsManagers.purple,
//                   ),
//                   verticalSpacing(5),
//                   Text(
//                     "Purchases",
//                     style: TextStyles.font12PurpleW500Poppins(context),
//                   ),
//                 ],
//               ),
//             ),
//             PersistentBottomNavBarItem(
//               activeColorPrimary: ColorsManagers.purple,
//               inactiveColorPrimary: ColorsManagers.outerSpace,
//               inactiveIcon: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset("assets/images/user.png", width: 24),
//                   verticalSpacing(5),
//                   Text(
//                     "Profile",
//                     style: TextStyles.font12OuterSpaceW400Poppins(context),
//                   ),
//                 ],
//               ),
//               icon: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     "assets/images/user.png",
//                     width: 24,
//                     color: ColorsManagers.purple,
//                   ),
//                   verticalSpacing(5),
//                   Text(
//                     "Profile",
//                     style: TextStyles.font12PurpleW500Poppins(context),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
