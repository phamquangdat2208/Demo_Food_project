import 'package:demo_food_project/HomePage/Tab/custom_bottom_navigation.dart';
import 'package:demo_food_project/HomePage/Tab/history_page.dart';
import 'package:demo_food_project/HomePage/Tab/like.dart';
import 'package:demo_food_project/HomePage/Tab/profife.dart';
import 'package:demo_food_project/HomePage/homepage.dart';
import 'package:flutter/material.dart';
class BottomNavigationBar1 extends StatefulWidget {
  @override
  _BottomNavigationBar1State createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {

    int _currentIndex =0;
  final PageController _pageController = PageController(initialPage: 0);
    @override
    Widget build(BuildContext context) {
      final isKeyBoard = MediaQuery.of(context).viewInsets.bottom !=0;
      return Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: (int index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  children: [
                    HomePage(),
                    Favorite(),
                    Profile(),
                    History(),
                  ],
                  controller: _pageController,
                ),
              ),
              if(!isKeyBoard) CustomBottomNavigation(
                currentIndex: _currentIndex,
                onItemTap: (int index) {
                  setState(() {
                    _currentIndex = index;
                  });
                  _pageController.jumpToPage(index);
                },
                icons: const [
                  Icons.home,
                  Icons.favorite_border,
                  Icons.person,
                  Icons.history,
                ],
              ),
            ],
          ),
        ),
      );
    }
  }


