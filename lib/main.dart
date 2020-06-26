import 'package:flutter/material.dart';
import 'package:vapee/dashboard.dart';



void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[300],
      body: Stack(
        children: <Widget>[
          Dashboard(),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      "Vapee Transport",
                       style: TextStyle(
                       
                              color: Colors.black87,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                   
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Surin - Khonkean",
                     style: TextStyle(
                          
                              color: Color(0XDD000000),
                              fontSize: 20,
                              fontWeight: FontWeight.w600)),
                    
                  ],
                ),
             //   Image.asset(
              //    "images/bus.png",
             //     alignment: Alignment.topCenter,
             //     width: 100,
             //     height: 150,
             //   ),
              ],
            ),
            
          ),
        ],
      ),
    );

    //  ],

    //  ),

    // );
  }
}
