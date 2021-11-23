import 'package:demo_food_project/HomePage/Tab/like.dart';
import 'package:demo_food_project/HomePage/bottom_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:demo_food_project/Model/food.dart';

class FoodDetail extends StatelessWidget {
  final Food food;

  FoodDetail(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Detail_AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ClipOval(
                child: Container(
                  decoration: new BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    )
                  ]),
                  child: Image.asset(food.image),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, bottom: 20),
              child: Text(
                food.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 23,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                food.id.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                food.descrip,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Container(
        padding: const EdgeInsets.all(50),
        child: RaisedButton(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          onPressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => LogIn()));
          },
          color: Colors.deepOrangeAccent,
          textColor: Colors.white,
          child: const Text("Add to cart", style: TextStyle(fontSize: 20)),
        ),
      )),
    );
  }
}

class Detail_AppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(100);
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
                      builder: (context) {
                        return BottomNavigationBar1();
                      },
                    ));
                  },
                ),
                Expanded(child: Container()),
                GestureDetector(
                  child: icon1,
                  onTap: () {
                    {
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                       return Favorite();
                     }));
                    }
                    ;
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
