import 'package:demo_food_project/HomePage/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BottomNavigationBar1()));
                    },
                    icon: const Icon(Icons.keyboard_arrow_left, size: 30,)
                ),
                const Padding(padding:EdgeInsets.only(left: 90)),
                const Text('History', style: TextStyle(
                  fontSize: 25,
                ),)
              ],
            ),
            Center(child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: const Icon(Icons.shopping_cart_outlined,size: 115,color: Colors.grey,),
            )),
            const SizedBox(height: 150),
            const Center(
              child: Text('No orders yet', style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text('Hit the orange button down below to Create an order',
                textAlign: TextAlign.center,
                maxLines: 2,style: TextStyle(fontSize: 16,
                    fontStyle: FontStyle.normal
                    ,color: Colors.black54,
                    wordSpacing: 5),

              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(right: 25,left: 25,bottom: 50),
        child: RaisedButton(
          padding: EdgeInsets.only(top: 20,bottom: 20),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          color: Colors.deepOrange,
          child: Text(
            "Start Ordering",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          onPressed: () {
          },
        ),
      ),
    );
  }
}
