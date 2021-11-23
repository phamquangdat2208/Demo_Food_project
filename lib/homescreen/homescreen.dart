import 'package:demo_food_project/login/login.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    double xW= MediaQuery.of(context).size.width- 210;
    return Scaffold(
      body:
      Container(
      color: Colors.deepOrange,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(40, 40, 40, 10),
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset("assets/icons/icon_homescreen.png"),
                    ),
                    onPressed: (){},
                  ),
              ),
             Padding(
                 padding:EdgeInsets.fromLTRB(30, 20, 50, 20),
                child: const Text('Food for Everyone',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 65,
                    fontWeight:FontWeight.w800,
                    fontFamily:"SF Pro Rounded",
                ),
                ),
             ),
              Padding(
                padding: EdgeInsets.zero ,
              ),
              Stack(
                children: [
                Row(
                   children: [
                     Container(
                       width: 210,
                      margin: EdgeInsets.fromLTRB(xW, 90, 0, 0),
                           child: Image.asset("assets/img/homescreen2.png"),
                     ),
                   ],
                ),
                  Positioned(child: Row(
                      children: [
                      Image.asset("assets/img/homescreen1.png",
                      width: 270,

                      ),
                      ],
                  ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 40,0),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    color: Colors.white,
                    child: Text("Get Started",style:TextStyle(
                      fontSize: 20,
                      color: Colors.deepOrange,
                    ),
                    ),
                    onPressed: (
                        ){
                      Ongetstarted();
                    },
                  ),
                ),
              ),
            ],
          ),
    )
    );
  }
  void Ongetstarted(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(
        builder: (context){
          return MaterialApp(
            theme: ThemeData(primarySwatch: Colors.deepOrange),
            home: Login(),
          );
        },
      ),
      );
    });
  }
}

