import "package:flutter/material.dart";
import 'package:help_out/screens/home_screen.dart';
import 'package:help_out/screens/first_screen.dart';
import 'package:help_out/screens/sign_up_screen.dart';

class sign_up_screen extends StatefulWidget {
  const sign_up_screen({super.key});

  @override
  State<sign_up_screen> createState() => _sign_up_screenState();
}

class _sign_up_screenState extends State<sign_up_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppbar(context),
        body: Container(
            color: Color.fromARGB(255, 233, 232, 232),
            padding: EdgeInsets.only(top: 60),
            child: ListView(children: [
              Container(
                margin: EdgeInsets.only(left: 60),
                child: _row1(),
              ),
              Container(
                  margin: EdgeInsets.only(left: 140, top: 10),
                  child: Text("Sign Up",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                      ))),
              _container3(),
              _container4(),
            ])));
  }
}

Container _container4() {
  return Container(
      margin: EdgeInsets.only(top: 20, bottom: 0),
      child: Column(
        children: [
          Text("If already registered ?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w400)),
          Container(
              margin: EdgeInsets.only(right: 5),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Login here",
                    style: TextStyle(
                        color: Color.fromARGB(255, 19, 28, 211),
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  )))
        ],
      ));
}

Container _container3() {
  return Container(
      margin: EdgeInsets.all(20),
      height: 360,
      width: 360,
      padding: EdgeInsets.only(top: 35, left: 18, right: 18),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 211, 209, 209),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 320,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter Name",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            height: 50,
            width: 320,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter Email Address",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            height: 50,
            width: 320,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 30),
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 194, 30, 150),
                  borderRadius: BorderRadius.circular(5)),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 194, 30, 150),
                  ),
                  child: Text("Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ))))
        ],
      ));
}

Row _row1() {
  return Row(children: [
    Image.asset("assets/images/logo2.png",
        fit: BoxFit.contain, width: 90, height: 90),
    Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 10),
        child: Text('HelpOut',
            style: TextStyle(
                color: Color.fromARGB(255, 21, 20, 20),
                fontWeight: FontWeight.w400,
                fontSize: 40.0))),
  ]);
}

AppBar _buildAppbar(context) {
  return AppBar(
      leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          }));
}
