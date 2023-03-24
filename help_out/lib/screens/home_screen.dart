import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:help_out/screens/first_screen.dart';

import 'package:help_out/screens/first_screen.dart';
import 'package:help_out/screens/sign_up_screen.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar : _buildappbar(),
      drawer : _drawer(), 
      body: _bodyofscreen(context),
    );
  }
  
}
Drawer _drawer() {
  return Drawer(

      child: ListView(
        padding: EdgeInsets.only(top :30),
        children: [
           Container(
            height: 70,
            padding: EdgeInsets.only(top:20,left:10),
            decoration: BoxDecoration(
              
              color :Color.fromARGB(255, 194, 30, 150),
            ),
            child : Text("Menu",style :TextStyle(fontSize: 30,color : Colors.white))
          ),
          ListTile(
            title : Text("Register ",style: TextStyle(fontSize:20)),
            onTap :(){}
          ),
          ListTile(
            title : Text("Contact  ",style: TextStyle(fontSize:20)),
            onTap :(){}
          ),
          ListTile(
            title : Text("About Us ",style: TextStyle(fontSize:20)),
            onTap :(){}
          ),
          ListTile(
            title : Text("Sign Out ",style: TextStyle(fontSize:20)),
            onTap :(){}
          ),
        ]
      ),
  );
}

Widget _bodyofscreen(BuildContext context) {
  return Container(
    alignment:Alignment.center,
    margin: EdgeInsets.only(top:80),
    child : Column(
      children :[
        _row1(),
        _row2(context),
        _row3(),
      ]
    )
    );
}

Row _row2(BuildContext context) {
  return Row(
        children: [
          Expanded(
            child:  GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => const first_screen())
                  
                  );
               // first_screen();
                //print("button clicked");
              },
               child:  Container(
                  decoration: BoxDecoration(
                      //foodlogo("assets/images/food.jpeg"),
                     
                      color: Color.fromARGB(255, 194, 30, 150),
                      borderRadius: BorderRadius.circular(20.0),
                      ),
                  margin: EdgeInsets.only(right: 20, left : 40,top:40),
                  height :150,
                  width :100,
                  padding: EdgeInsets.only(top:20),
                  child : Column(
                    children: [
                      Image.asset("assets/images/book2.png",height: 80,width: 80,fit :  BoxFit.contain),
                      Container(
                        margin: EdgeInsets.only(top:5),
                        child:Text(
                      "Books",
                      style : TextStyle(
                       color : Colors.white,
                        fontSize: 23,
                      )
                      )
                      )
                    ],
                  ),
                  )
               
               
               )
          ),
           // Icon(Icons.book_online_outlined , color : Colors.black, ),
          Expanded(
            child: GestureDetector(
                  onTap: (){},

            child:  Container(

                  decoration: BoxDecoration(
                  
                  color: Color.fromARGB(255, 194, 30, 150),
                  
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: EdgeInsets.only(right: 30, left : 30, top:40),
                  height :150,
                  width :100,
                  //padding: EdgeInsets.only(top:20 ),
                  child : Column(
                    children: [
                      Image.asset("assets/images/teaching.png",height: 105,width: 100,fit :  BoxFit.fitHeight),
                      Container(
                        //margin: EdgeInsets.only(bottom:5),
                        child:Text(
                      "Teaching",
                      style : TextStyle(
                       color : Colors.white,
                        fontSize: 23,
                      )
                      )
                      )
                    ],
                  )
                  )
            )
          ),
          
        ]        
  );
}
Row _row1() {
  return Row(
        children: [
          Expanded(
            child: GestureDetector(
            onTap: (){},
            child: Container(

                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 194, 30, 150),
                    
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: EdgeInsets.only(right: 20, left : 40),
                  height :150,
                  width :100,
                  padding: EdgeInsets.only(top:25 ),
                  child : Column(
                    children: [
                      foodlogo("assets/images/food3.png"),
                      Container(
                        margin: EdgeInsets.only(top:10),
                        child:Text(
                      "Food",
                      style : TextStyle(
                       color : Colors.white,
                        fontSize: 23,
                      )
                      )
                      )
                      
                    ],
                  )
                  )
              ) ,),

          Expanded(
            
            child :GestureDetector(
              onTap: (){},
            child:  Container(
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 194, 30, 150),
                  
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: EdgeInsets.only(right: 30, left : 30),
                  height :150,
                  width :100,
                  padding: EdgeInsets.only(top:25 ),
                  child : Column(
                    children: [
                      Image.asset("assets/images/money2.png",height: 70,width: 70,fit :  BoxFit.contain),
                      Container(
                        margin: EdgeInsets.only(top:10),
                        child:Text(
                      "Money",
                      style : TextStyle(
                       color : Colors.white,
                        fontSize: 23,
                      )
                      )
                      )
                    ],
                  )
                  )
            )
          ),
          ]        
  );
}

Image foodlogo(String s) {
  return Image.asset(s, fit :BoxFit.contain, height: 70,width: 70,);
}



Row _row3() {
  return Row(
        children: [
          Expanded(
            child:  Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 194, 30, 150),
                      borderRadius: BorderRadius.circular(20.0),
                      ),
                  margin: EdgeInsets.only(right: 20, left : 40, top: 40),
                  height :150,
                  width :100,
                  padding: EdgeInsets.only(top:20),
                  child : Column(
                    children: [
                      Image.asset("assets/images/clothes.png",height: 70,width: 70,fit :  BoxFit.contain),
                      Container(
                        margin: EdgeInsets.only(top:15),
                        child:Text(
                      "Clothes",
                      style : TextStyle(
                       color : Colors.white,
                        fontSize: 23,
                      )
                      )
                      )
                    ],
                  )
                  )
            )
            ,
            Expanded(
            child:  Container(
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 194, 30, 150),
                  
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: EdgeInsets.only(right: 30, left : 30, top: 40),
                  height :150,
                  width :100,
                  padding: EdgeInsets.only(top:25 ),
                  child : Column(
                    children: [
                      Image.asset("assets/images/others.png",height: 70,width: 60,fit :  BoxFit.contain),
                      Container(
                        margin: EdgeInsets.only(top:10),
                        child:Text(
                      "others",
                      style : TextStyle(
                       color : Colors.white,
                        fontSize: 23,
                      )
                      )
                      )
                    ],
                  )
                  )
            ),
          
        ]        
  );
}

AppBar _buildappbar() {
  return AppBar(
      backgroundColor : Color.fromARGB(255, 194, 30, 150),
      title : Row(
        children : [

          Expanded(
            child:Text("HelpOut", 
              style : TextStyle(
                  color : Colors.white,
                  fontStyle : FontStyle.normal,
                  fontSize: 28.0
              )
        ) ),
        Container(
          margin : EdgeInsets.only(left:38),
          height : 50,
          child: Icon(
            Icons.account_circle,

          )
        )
        ]
        )
      );
}

