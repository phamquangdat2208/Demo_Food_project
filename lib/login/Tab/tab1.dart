import 'package:demo_food_project/HomePage/Tab/profife.dart';
import 'package:demo_food_project/HomePage/bottom_navigation_bar.dart';
import 'package:demo_food_project/HomePage/homemain.dart';
import 'package:demo_food_project/HomePage/homepage.dart';
import 'package:demo_food_project/login/Tab/tab2.dart';
import 'package:flutter/material.dart';

class TabBar1 extends StatefulWidget {
  @override
  _TabBar1State createState() => _TabBar1State();
}

class _TabBar1State extends State<TabBar1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
      constraints: BoxConstraints.expand(),
      color: Colors.white,
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 60, 0, 40),
              child: TextField(
                controller: _userController,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                    errorText: _userInvalid ? _usererror : null,
                    labelText: "Email Address",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: TextField(
                controller: _passController,
                style: TextStyle(color: Colors.black, fontSize: 18),
                obscureText: !_showPass,
                decoration: InputDecoration(
                  errorText: _passInvalid ? _passerror : null,
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: GestureDetector(
                onTap: OnForgotPass,
                child: Text(
                  "Forgot Passcode?",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  color: Colors.deepOrange,
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    OnToggleSignIn();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  bool _showPass = false;
  var _usererror = "Email Invalid";
  var _passerror = "Password Invalid";
  var _userInvalid = false;
  var _passInvalid = false;

  void OnToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void OnForgotPass() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return MaterialApp(
              home: TabBar2(),
            );
          },
        ),
      );
    });
  }

  void OnToggleSignIn() {
    setState(() {
      if (_userController.text.length < 6 ||
          !_userController.text.contains('@')) {
        _userInvalid = true;
      } else {
        _userInvalid = false;
      }
      if (_passController.text.length < 6) {
        _passInvalid = true;
      } else {
        _passInvalid = false;
      }
      if (!_userInvalid && !_passInvalid) {
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => BottomNavigationBar1())
        );
        // Navigator.of(context)
        //     .pushNamedAndRemoveUntil('/homepage', (Route<dynamic> route) => false);
      }
    });
  }
}
