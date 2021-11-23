
import 'package:demo_food_project/HomePage/Tab/buildingdrawer.dart';
import 'package:demo_food_project/HomePage/Tab/cart.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'item/list_item.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset:true,
      body: Container(
         color: const Color.fromARGB(255, 243, 243, 243),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top:40,left: 20,right: 25),
              child:  Row(
                children: [
                    Container(
                        child: IconButton(
                          icon: const Icon(Icons.menu),
                          color: Colors.deepOrange,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return DrawerWidget();
                              },
                            ));
                          },
                        )
                    ),
                  Expanded(child: Container(

                  )),
                  Container(
                    child: IconButton(
                      icon: const Icon(Icons.shopping_cart_outlined),
                      color: Colors.deepOrange,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Cart();
                          },
                        ));
                      },
                    ),
                  )
                ],

              ),

            ),
            Container(
                 child: Padding(
                   padding: const EdgeInsets.fromLTRB(40, 30, 0, 30),
                   child: Text("Delicious \nfor everyone",
                    style: TextStyle(
                      fontFamily: "SF Pro Rounded",
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                ),
                 ),
              ),
            Container(
              padding: EdgeInsets.only(right: 25,left: 25),
              child: TextField(
                decoration: new InputDecoration(
                  fillColor: Colors.grey[300], filled: true,
                  enabledBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide:  BorderSide(color: const Color.fromARGB(255, 243, 243, 243)),
                  ),
                  focusedBorder: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide:  BorderSide(color: const Color.fromARGB(255, 243, 243, 243)),
                  ),
                    focusColor: Colors.white,
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search),
                ),
              )
            ),
            Expanded(child: Container(
              margin: const EdgeInsets.only(top: 10),
              height: double.infinity,
             width: double.infinity,
             child: DefaultTabController(
               length: 4,
               child: Column(
                 children: [
                   Container(
                     padding: EdgeInsets.only(left: 20),
                     color: const Color.fromARGB(255, 243, 243, 243),
                     child: const TabBar(
                       indicatorColor: Colors.deepOrange,
                       isScrollable: true,
                       labelColor: Colors.deepOrange,
                       unselectedLabelColor: Colors.grey,
                       labelStyle: TextStyle(fontSize: 18),
                       indicatorSize: TabBarIndicatorSize.label,
                       tabs: [
                         Tab(
                           child: Text('Food')
                         ),
                         Tab(
                           child: Text('Drinks')
                         ),
                         Tab(
                           child: Text('Snacks')
                         ),
                         Tab(
                           child: Text('Sauce')
                         ),
                       ],
                     ),
                   ),
                   Expanded(
                     flex: 2,
                     child: TabBarView(children: [
                       List_items(),
                       Tab(
                           child: Container(
                               margin: const EdgeInsets.all(30))),
                       Tab(
                           child: Container(
                               margin: const EdgeInsets.all(0))),
                       const Tab(child: Text('A')),
                     ]),
                   ),
                 ],
               ),
               ),
             ),
            )
          ],
        ),
      ),

    );
  }
}

