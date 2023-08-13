// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scorers/Screens/dashboard_screens/highlights_screen.dart';
import 'package:scorers/Screens/dashboard_screens/home_screen.dart';
import 'package:scorers/Screens/dashboard_screens/leaderborad_screen.dart';
import 'package:scorers/Screens/dashboard_screens/predict_screen.dart';
import 'package:scorers/Screens/dashboard_screens/rewards_screen.dart';
import 'package:scorers/Utils/theme/app_colors.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),
    const PredictScreen(),
    const LeaderBoardScreen(),
    const RewardsScreen(),
    const HighlightsScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 90.h,
        title: Text("Home",
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Colors.white)),
      ),
      body: _children[_currentIndex],
      drawer: const BaseScreenDrawerWidget(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
        selectedLabelStyle: Theme.of(context).textTheme.bodySmall,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          bottomNavBarItemWidget(
            context: context,
            label: "Home",
            iconImagePath: "assets/images/home.png",
            scale: 0.5,
          ),
          bottomNavBarItemWidget(
            context: context,
            label: "Predict",
            iconImagePath: "assets/images/predict.png",
            scale: 0.5,
          ),
          bottomNavBarItemWidget(
            context: context,
            label: "Leadeboard",
            iconImagePath: "assets/images/leaderboard.png",
            scale: 0.5,
          ),
          bottomNavBarItemWidget(
            context: context,
            label: "Rewards",
            iconImagePath: "assets/images/reward.png",
            scale: 0.5,
          ),
          bottomNavBarItemWidget(
            context: context,
            label: "Highlights",
            iconImagePath: "assets/images/highlight.png",
            scale: 0.5,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomNavBarItemWidget({
    required BuildContext context,
    required String label,
    required String iconImagePath,
    double? scale,
  }) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        iconImagePath,
        color: AppColors.primaryColor,
      ),
      label: label,
      activeIcon: Container(
        width: 50.w,
        height: 30.w,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(15).w),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Image.asset(
          iconImagePath,
          color: Colors.white,
          fit: BoxFit.cover,
          scale: scale,
        ),
      ),
    );
  }
}

class BaseScreenDrawerWidget extends StatelessWidget {
  const BaseScreenDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var neumorphicStyle = NeumorphicStyle(
      shape: NeumorphicShape.convex,
      depth: -10,
      border: NeumorphicBorder(
        color: Colors.grey[300]!,
        width: 0.3,
      ),
      boxShape: NeumorphicBoxShape.roundRect(
        BorderRadius.circular(12),
      ),
    );
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DrawerHeader(
            margin: EdgeInsets.zero,
            child: Image.asset(
              "assets/images/logo.png",
              scale: 0.8,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Neumorphic(
                style: neumorphicStyle,
                child: Container(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          const NeumorphicButtonWidget(
            icon: Icons.login,
            label: "Login",
          ),
          const NeumorphicButtonWidget(
            icon: Icons.person,
            label: "Sign Up",
          ),
          const NeumorphicButtonWidget(
            icon: Icons.logout,
            label: "Logout",
          ),
        ],
      ),
    );
  }
}

class NeumorphicButtonWidget extends StatelessWidget {
  const NeumorphicButtonWidget({
    super.key,
    required this.label,
    required this.icon,
  });
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    var neumorphicStyle = NeumorphicStyle(
      shape: NeumorphicShape.convex,
      color: AppColors.primaryColor,
      depth: -10,
      border: NeumorphicBorder(
        color: Colors.grey[300]!,
        width: 0.3,
      ),
      boxShape: NeumorphicBoxShape.roundRect(
        BorderRadius.circular(12),
      ),
    );
    return NeumorphicButton(
      margin: const EdgeInsets.all(8.0),
      onPressed: () {
        print('Login button pressed');
      },
      style: neumorphicStyle,
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: <Widget>[
          Icon(icon, size: 24, color: Colors.white),
          const SizedBox(width: 8),
          Text(label, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
