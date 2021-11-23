import 'package:demo_food_project/HomePage/bottom_navigation_bar.dart';
import 'package:demo_food_project/HomePage/homepage.dart';
import 'package:demo_food_project/Model/list_menu.dart';
import 'package:demo_food_project/login/login.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
      print(
          'Backbutton pressed (device or appbar button), do whatever you want.11111111111');
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => BottomNavigationBar1()));
      return Future.value(false);
    },
      child: Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 100)),
          SingleChildScrollView(
            child: Column(
              children: [
                buildDrawerItems(context)
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Login()));
        },
        child: Container(
          margin: const EdgeInsets.only(left: 20, bottom: 20),
          child: Row(
            children: const [
              Text('Sign-out', style: TextStyle(
                  color: Colors.white,fontSize: 17,
                fontWeight: FontWeight.w700,
              ),),
              Padding(padding: EdgeInsets.only(right: 2)),
              Icon(Icons.arrow_forward,color: Colors.white,
              size: 20,)
            ],
          ),
        ),
      )
    ));
  }

  Widget buildDrawerItems(BuildContext context) {
    return Column(
      children: DrawerItems.all
          .map(
              (item) => ListTile(
                contentPadding:EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                leading: Icon(item.icon, color: Colors.white,size: 17,),
                title: Text(
                  item.title, style: const TextStyle(color: Colors.white,fontSize: 17,
                  fontWeight: FontWeight.w700,),
                ),
                onTap: () {
                  if(item.title == 'Profile'){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomNavigationBar1()));
                  }
                  //else if(item.title == 'Frofile'){
                  //   Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
              )
      )
          .toList()
    );
  }
}



