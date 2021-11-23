import 'package:demo_food_project/HomePage/bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Appbar_detail extends StatefulWidget {
  const Appbar_detail({Key? key}) : super(key: key);

  @override
  _Appbar_detailState createState() => _Appbar_detailState();
}
class _Appbar_detailState extends State<Appbar_detail>  {
  Color color1 = Color.fromARGB(255, 255, 0, 0);
  Icon icon1 = Icon(Icons.favorite_border);
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.only(top: 40, left: 20, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.chevron_left),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                        return BottomNavigationBar1();
                      },
                    ));
                  },
                ),
                Expanded(child: Container()),
                GestureDetector(
                  child: icon1,
                  onTap: () {
                    setState(() {
                      if(count==0){
                        icon1 = Icon(Icons.favorite, color: Colors.red);
                        count =1;
                      } else {
                        icon1= Icon(Icons.favorite_border);
                        count = 0;
                      }
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}