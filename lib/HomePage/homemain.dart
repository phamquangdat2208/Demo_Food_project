// import 'package:demo_food_project/HomePage/Tab/buildingdrawer.dart';
// import 'package:demo_food_project/HomePage/bottom_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:demo_food_project/HomePage//Tab/cart.dart';
// import 'homepage.dart';
//
// class HomeMain extends StatefulWidget {
//   const HomeMain({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomeMain> {
//   late double xOffset;
//   late double yOffset;
//   late double scaleFactor;
//
//   @override
//   void initState() {
//     super.initState();
//     closeDrawer();
//   }
//
//   void closeDrawer(){
//     setState(() {
//       xOffset =0;
//       yOffset = 0;
//       scaleFactor = 1;
//     });
//   }
//   void openDrawerr() {
//     setState(() {
//         xOffset = 230;
//       yOffset = 150;
//       scaleFactor =0.7;
//     });
//   }
//
//   final GlobalKey<ScaffoldState> _key = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.red,
//         body: Stack(
//           children: [BuildDrawer(), BuildPage()],
//         )
//     );
//   }
//
//   Widget BuildDrawer() => SafeArea(child: DrawerWidget());
//
//   Widget BuildPage() {
//
//     return GestureDetector(
//       onTap: () {
//         closeDrawer();
//       },
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 5000),
//         transform: Matrix4.translationValues(xOffset, yOffset, 0)
//         ..scale(scaleFactor),
//         child: BottomNavigationBar1(),
//       ),
//     );
//   }
//
//
// }
//
//
