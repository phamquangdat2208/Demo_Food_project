import 'package:demo_food_project/HomePage/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int? cout;
  bool bl1 = false;
  bool bl2 = false;
  bool bl3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(top: 50)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 25)),
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
              Padding(
                padding: EdgeInsets.only(left: 85),
                child: Text(
                  'My Profile',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.fromLTRB(40, 25, 0, 20),
              child: Text(
                'Information',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
              )),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(left: 25, right: 25),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 4,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 80,
                  child: Image.asset('assets/img/icon_profile.png'),
                ),
                Padding(padding: EdgeInsets.only(right: 20)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Phạm Quang Đạt',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 10)),
                        Icon(Icons.edit),
                      ],
                    ),
                    Text('phamquangdat@gmail.com'),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            margin: EdgeInsets.fromLTRB(40, 25, 0, 20),
            child: Text(
              'Payment Method',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(left: 25, right: 25),
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 4,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Radio(value: 1, groupValue: cout, onChanged: setthanhtoan),
                    Container(
                      width: 45,
                      height: 45,
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.credit_card,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.deepOrange,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 15)),
                    Text(
                      'Card',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  indent: 30,
                  thickness: 0.5,
                  endIndent: 30,
                ),
                Row(
                  children: [
                    Radio(value: 2, groupValue: cout, onChanged: setthanhtoan),
                    Container(
                      width: 45,
                      height: 45,
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.account_balance,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.pinkAccent,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 15)),
                    Text(
                      'Back Account',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  indent: 30,
                  thickness: 0.5,
                  endIndent: 30,
                ),
                Row(
                  children: [
                    Radio(value: 3, groupValue: cout, onChanged: setthanhtoan),
                    Container(
                      width: 45,
                      height: 45,
                      alignment: Alignment.center,
                      child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.paypal),
                      onPressed: () {},
                      color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.blueAccent,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 15)),
                    Text(
                      'PayPal',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 40)),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(right: 25, left: 25, bottom: 50),
        child: RaisedButton(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          color: Colors.deepOrange,
          child: Text(
            "Update",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  void setthanhtoan(value) {
    setState(() {
      cout = int.parse(value.toString());
      if (cout == 0) {
        bl1 = true;
        bl2 = false;
        bl3 = false;
      } else if (cout == 1) {
        bl2 = true;
        bl1 = false;
        bl3 = false;
      } else if (cout == 2) {
        bl2 = false;
        bl1 = false;
        bl3 = true;
      }
    });
  }
}
