import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:demo_food_project/HomePage/bottom_navigation_bar.dart';
import 'package:demo_food_project/HomePage/homepage.dart';
import 'package:demo_food_project/login/Loading.dart';
import 'package:flutter/material.dart';
import 'Fade/route_names.dart';
import 'Fade/routes.dart';
import 'homescreen/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
      '/homepage':(context) => BottomNavigationBar1(),
    },
      navigatorKey: Routes.instance.navigatorKey,
      onGenerateRoute: Routes.generateRoute,
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.deepOrange) ,
        visualDensity:VisualDensity.adaptivePlatformDensity
      ),
        home: AnimatedSplashScreen(
          splash: Splash(),
            splashIconSize: double.maxFinite,
            centered: true,
            nextScreen: HomeScreen(),
        )
    );
  }
}

