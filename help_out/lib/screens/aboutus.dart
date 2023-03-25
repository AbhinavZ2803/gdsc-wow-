import 'dart:async';

import 'package:flutter/material.dart';
import 'package:help_out/screens/home_screen.dart';
import 'package:help_out/screens/first_screen.dart';
import 'package:help_out/screens/sign_up_screen.dart';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

// class AboutUsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('About Us'),
//         backgroundColor: Colors.teal[300],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Colors.teal.shade200, Colors.teal.shade400],
//           ),
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'HelpOut is an initiative by college students of Pune to ease out the donation process between donors and social welfare organizations like orphanages and old age homes in Pune. The app is user-friendly and encourages people to donate in the comfort of their homes via providing all the necessary information regarding a nearby organization with just a click.',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: 24.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(
//                       children: [
//                         Icon(
//                           Icons.star,
//                           size: 50.0,
//                           color: Colors.white,
//                         ),
//                         Text(
//                           'Rate Us',
//                           style: TextStyle(
//                             fontSize: 16.0,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Icon(
//                           Icons.feedback,
//                           size: 50.0,
//                           color: Colors.white,
//                         ),
//                         Text(
//                           'Send Feedback',
//                           style: TextStyle(
//                             fontSize: 16.0,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Icon(
//                           Icons.share,
//                           size: 50.0,
//                           color: Colors.white,
//                         ),
//                         Text(
//                           'Share with Friends',
//                           style: TextStyle(
//                             fontSize: 16.0,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 24.0),
//                 Text(
//                   'Phone: 123-456-7890',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: 8.0),
//                 Text(
//                   'Email: zilkarwarabhinav@gmail.com',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 194, 43, 86),
        title: Text('About Us'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                children: [
                  Icon(
                    Icons.person, // replace with your own icon
                    size: 100, // adjust size as needed
                  ),
                  SizedBox(height: 16),
                  // ignore: prefer_const_constructors
                  Text(
                    'helpout',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'HelpOut is an initiative by college students of pune to ease out the donation process between donors and social welfare organisations like orphanages and old age homes in pune. The app is user-friendly and encourages people to donate in the comfort of their homes via providing all the necessary information regarding a nearby organisation with just a click.', // replace with your own text
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade200,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Text(
                    'Contact Us',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      // add action to call phone number
                    },
                    child: Text(
                      '9561387199', // replace with your own phone number
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  InkWell(
                    onTap: () {
                      // add action to open email app
                    },
                    child: Text(
                      'helpout@gmail.com', // replace with your own email address
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Dy patil,Akurdi,Pune-411044', // replace with your own physical address
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
