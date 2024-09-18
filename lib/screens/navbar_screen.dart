import 'package:education_app_ui/Utils/colors.dart';
import 'package:education_app_ui/screens/home_screen.dart';
import 'package:education_app_ui/screens/news_screen.dart';
import 'package:education_app_ui/screens/profile_screen.dart';
import 'package:education_app_ui/screens/team_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    HomeScreen(),
    NewsScreen(),
    TeamScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        setState(() {
          _selectedIndex = tabController.index;
        });
      }
    });
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: GFTabBar(
        length: 4,
        controller: tabController,
        tabBarHeight: 60,
        tabBarColor: GFColors.WHITE,
        labelStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
        tabs: const [
          Tab(
            icon: Icon(Icons.home),
            child: Text(
              "Home",
            ),
          ),
          Tab(
            icon: Icon(Icons.newspaper),
            child: Text(
              "News",
            ),
          ),
          Tab(
            icon: Icon(Icons.group),
            child: Text(
              "My Team",
            ),
          ),
          Tab(
            icon: Icon(Icons.person),
            child: Text(
              "Profile",
            ),
          ),
        ],
      ),
    );
  }
}
