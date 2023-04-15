import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class profilepage2 extends StatefulWidget {
  const profilepage2({super.key});

  @override
  State<profilepage2> createState() => _profilepage2State();
}

class _profilepage2State extends State<profilepage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 194, 43, 86),
          title:  Text('Profile'),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              })) ,
        body: Column(children: [
          Container(
            height: 120,
            width:120,
            margin: EdgeInsets.only(left:140,top:40),
            //alignment: Alignment.center,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: AssetImage('assets/images/oldage.jpg')
            )
          ),
          // Container(
          //   decoration: BoxDecoration{},
          // )
        ]) ,
    );
  }
}