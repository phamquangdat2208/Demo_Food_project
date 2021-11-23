import 'package:flutter/material.dart';

import 'Tab/tab1.dart';
import 'Tab/tab2.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 60,left: 0,right: 0),
      color: Colors.white,
      height: double.infinity,
      child: Column(
        children: [
          Image.asset("assets/img/login.png",height: 181,),
        Expanded(child: Container(
          child: DefaultTabController(
              length: 2,
              child: Scaffold(

                appBar: buildAppBar(),
                body: Column(
                  children: [
                    Expanded(
                      child: TabBarView(children: [
                        TabBar1(),
                        TabBar2(),
                      ]),
                    ),
                  ],
                ),
              )),
        ))
        ],
      ),
    ),
    );
  }
}
AppBar buildAppBar() {
  return AppBar(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
    backgroundColor: Colors.white,
    title: Column(
      children: [
        TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            tabs:[
          Tab(
            child: Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          Tab(
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          )
        ]),
      ],
    ),
  );
}
