import 'package:flutter/material.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:help_out/screens/home_screen.dart';
import 'package:help_out/screens/first_screen.dart';
import 'package:help_out/screens/sign_up_screen.dart';
import 'package:help_out/screens/aboutus.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:help_out/screens/contactus.dart';
class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 232, 232),
        body: ListView(
          padding: EdgeInsets.only(top:110),
          children: [
      Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 10),
          child: Text('HelpOut',
              style: TextStyle(
                  color: Color.fromARGB(255, 21, 20, 20),
                  fontWeight: FontWeight.w400,
                  fontSize: 40.0))),
      Container(
        margin: EdgeInsets.only(top:10),
        child:Image.asset("assets/images/logo2.png", fit: BoxFit.contain,width :110, height:110),
      ),
      _container3(),
      _container4(),
    ]));
  }
}

Container _container4() {
  return Container(
            margin: EdgeInsets.only(top:20,bottom:0),
            child: Column(
              children: [
                Text(
              "If not a member ?",
              style : TextStyle(
                color : Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400
              )
              
              ),
              Container(
                margin: EdgeInsets.only(right :5),
                child:TextButton(
               
              onPressed: (){},
             
              child: Text(
                "Register here",
                style : TextStyle(color : Color.fromARGB(255, 19, 28, 211), fontSize : 13,fontWeight: FontWeight.w400),
              )
              
              )
              )
              ],)
            );
}


Container _container3() {
  return Container(
    margin: EdgeInsets.only(top:15),
    height :360,
    width: 360,
    padding: EdgeInsets.only(top:25,left:18,right:18),

    decoration: BoxDecoration(
      //color :Color.fromARGB(255, 211, 209, 209),
      //borderRadius: BorderRadius.circular(10),
    ),
    child :Column(
      children: [
        Container(
          height: 50,
          width: 320,
          padding: EdgeInsets.only(left:20),
          decoration: BoxDecoration(
            color : Colors.white,
            borderRadius: BorderRadius.circular(18)
          ),
          child: TextField(
            
            decoration: InputDecoration(
              hintText: "Enter UserName",
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.black,fontSize: 18)
            ),
            
          ),
        ),
        Container(
          margin: EdgeInsets.only(top:30),
          height: 50,
          width: 320,
          padding: EdgeInsets.only(left:20),
          decoration: BoxDecoration(
            color : Colors.white,
            borderRadius: BorderRadius.circular(18)
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter Password",
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.black,fontSize: 18)
            ),
            
          ),
        ),
        Container(
          margin: EdgeInsets.only(left:190,top :10),
          child: TextButton(
            onPressed: (){},
            child: Text(
              "Forget Password?",
              style : TextStyle(
                color : Colors.black,
                fontSize: 15
              )
              ),)
        ),


        Container(
          margin: EdgeInsets.only(top:10),
          height: 50,
          width: 320,
          decoration: BoxDecoration(
            color :Color.fromARGB(255, 194, 30, 150),
            borderRadius: BorderRadius.circular(20)
          ),
          child:ElevatedButton(
            onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 194, 30, 150), 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18)
              )
            ),
            child: Text(
              "Login",
              style:TextStyle(
                
                color: Colors.white,
                fontSize: 23,
              )
            )
          
          )
        )
      ],
    )
  );
}
