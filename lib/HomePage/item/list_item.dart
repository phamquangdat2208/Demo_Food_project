import 'package:demo_food_project/HomePage/item/food_detail2.dart';
import 'package:flutter/material.dart';
import 'package:demo_food_project/Model/food.dart';

class List_items extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(
        itemBuilder: (_, index) => ItemCard(food: listFood[index]),
        itemCount: listFood.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Food food;

  const ItemCard({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => FoodDetail(food)));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 40),
        child: Stack(
          children: <Widget>[
            Container(
              width: 220,
              height: 330,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.deepOrangeAccent,
                  Colors.deepOrange,
                  Colors.deepOrangeAccent
                ]),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 200),
                  Text(
                    food.title,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    food.id.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      food.descrip,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10.0,
              left: 20,
              child: ClipOval(
                child: Container(
                  decoration: new BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                  width: 180,
                  height: 180,
                  child: Image.asset(food.image),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
