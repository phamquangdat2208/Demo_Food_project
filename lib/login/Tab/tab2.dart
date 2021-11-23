import 'package:demo_food_project/homescreen/homescreen.dart';
import 'package:demo_food_project/login/Tab/tab1.dart';
import 'package:flutter/material.dart';
class TabBar2 extends StatefulWidget {
  @override
  _TabBar2State createState() => _TabBar2State();
}

class _TabBar2State extends State<TabBar2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 30,30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0,60,0,40),
                child: TextField(
                  controller: _userController,
                  style: TextStyle(color:Colors.black, fontSize: 18,
                  ),
                  decoration: InputDecoration(
                      errorText: _userInvalid ? _usererror : null,
                      labelText: "Email Address",
                      labelStyle:TextStyle(color:Colors.grey,fontSize: 15, fontWeight: FontWeight.bold,)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: TextField(
                  controller: _passController,
                  style: TextStyle(color:Colors.black, fontSize: 18),
                  obscureText: !_showPass,
                  decoration: InputDecoration(
                    errorText: _passInvalid ? _passerror : null,
                    labelText: "Password",
                    labelStyle: TextStyle(color:Colors.grey,fontSize: 15, fontWeight: FontWeight.bold,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: TextField(
                  controller: _repassController,
                  style: TextStyle(color:Colors.black, fontSize: 18),
                  obscureText: !_showPass,
                  decoration: InputDecoration(
                    errorText: _repassInvalid ? _repasserror : null,
                    labelText: "Confirm Password",
                    labelStyle: TextStyle(color:Colors.grey,fontSize: 15, fontWeight: FontWeight.bold,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    color: Colors.deepOrange,
                    child: Text("Sign Up",style:TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    ),
                    onPressed: (
                        ){ OnToggleSignup();},
                  ),
                ),
              ),

            ],
          ),
        ),
      )
    );
  }
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _repassController = new TextEditingController();
  bool _showPass = false;
  var _usererror ="Invalid Email ";
  var _passerror ="Invalid password";
  var _repasserror ="Invalid Re-Password";
  var _userInvalid = false;
  var _passInvalid = false;
  var _repassInvalid = false;
  void OnToggleSignup(){
    setState(() {
      if(_userController.text.length < 6 || !_userController.text.contains('@')){
        _userInvalid = true;
      }else{
        _userInvalid =false;
      }
      if(_passController.text.length < 6 ){
        _passInvalid = true;
      }else {
        _passInvalid = false;
      }
      if(_passController != _repassController){
        _repassInvalid = true;
      }else{
        _repassInvalid=false;
      }
      if(!_userInvalid && !_passInvalid &&!_repassInvalid){
        Navigator.push(context, MaterialPageRoute(
          builder: (context){
            return MaterialApp(
              home: HomeScreen(),
            );
          },
        ),
        );
      }
    });
  }
}

