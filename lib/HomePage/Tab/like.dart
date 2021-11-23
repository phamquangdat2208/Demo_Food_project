import 'package:demo_food_project/HomePage/bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  var lists = Item.listss;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 243, 243),
        body: Container(
          margin: const EdgeInsets.only(top: 40, left: 30, right: 30),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.keyboard_arrow_left),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return BottomNavigationBar1();
                        },
                      ));
                      // Routes.instance.pop();
                    },
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 100),
                      child: const Text(
                        'Cart',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 30)),
              const Text(
                'swipe on an item_menu_drawer to delete',
                style: TextStyle(
                  // backgroundColor:Color.fromARGB(255, 243, 243, 243),
                  fontWeight: FontWeight.w400, fontSize: 18,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Expanded(
                  child: ListView.builder(
                      itemCount: lists.length,
                      itemBuilder: (context, index) {
                        final item = lists[index];
                        return Slidable(
                          // Specify a key if the Slidable is dismissible.
                          key: UniqueKey(),
                          endActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            children: [
                              SlidableAction(
                                backgroundColor: Color.fromARGB(255, 243, 243, 243),
                                flex: 1,
                                onPressed: (context) {},
                                foregroundColor: Colors.red,
                                icon: Icons.favorite,
                              ),
                              SlidableAction(
                                backgroundColor: Color.fromARGB(255, 243, 243, 243),
                                onPressed: (context) {
                                  setState(() {
                                    doNothing(context, index);
                                  });
                                },
                                foregroundColor: Colors.black,
                                icon: Icons.delete,
                              ),
                            ],
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.22),
                                    offset: Offset(.0, 6.7),
                                    blurRadius: 10.7,
                                    spreadRadius: 2.0)
                              ],
                              color: Color.fromARGB(255, 243, 243, 243),
                            ),
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipOval(
                                  child: Container(
                                    child: Image.asset(
                                      item.link,
                                      width: 120,
                                      height: 120,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item.nameItem,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Padding(
                                          padding: EdgeInsets.only(top: 10)),
                                      Row(
                                        children: [
                                          Text(item.monney),
                                          const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 20)),
                                          Container(
                                            padding: const EdgeInsets.all(5),
                                            child: Row(
                                              children: [
                                                GestureDetector(
                                                  child: const Icon(
                                                    Icons.remove,
                                                    size: 15,
                                                    color: Colors.white,
                                                  ),
                                                  onTap: () {
                                                    setState(() {
                                                      if (lists[index].getSL ==
                                                          0) {
                                                      } else {
                                                        lists[index].setSl =
                                                            lists[index].getSL -
                                                                1;
                                                      }

                                                      // if(lists[index].getSL ==0){
                                                      //    // ko lam gi het
                                                      // } else {
                                                      //   countt--;
                                                      // }
                                                    });
                                                  },
                                                ),
                                                const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5)),
                                                Text('${lists[index].getSL}',style: TextStyle(
                                                  color: Colors.white,
                                                ),),
                                                const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5)),
                                                GestureDetector(
                                                  child: const Icon(
                                                    Icons.add,
                                                    size: 15,
                                                    color: Colors.white,
                                                  ),
                                                  onTap: () {
                                                    setState(() {
                                                      lists[index].setSl =
                                                          lists[index].getSL +
                                                              1;
                                                      // print('1');
                                                      //  countt= lists[index].sl+1;
                                                      // lists[index].setSL =countt;
                                                      // countt =0;
                                                    });
                                                  },
                                                )
                                              ],
                                            ),
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8.0)),
                                              color: Colors.deepOrangeAccent,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ));
  }

  void doNothing(BuildContext context, int index) {
    lists.removeAt(index);
  }
}

class Item {
  Item(
    this.monney,
    this.nameItem,
    this.link,
    this.sl,
  );

  final String monney;
  final String nameItem;
  final String link;
  int sl = 0;

  get getSL {
    return sl;
  }

  set setSl(int slNew) {
    sl = slNew;
  }

  static final List<Item> listss = [
    Item('1900', 'Vegeie tomato mix', 'assets/img/food_01.png', 0),
    Item('3800', 'name 2', 'assets/img/food_2.png', 0),
    Item('2200', 'name3', 'assets/img/food_3.png', 0),
    Item('2200', 'name4', 'assets/img/food_4.png', 0),
    Item('2200', 'name5', 'assets/img/food_01.png', 0),
    Item('2200', 'name5', 'assets/img/food_2.png', 0),
  ];
}
