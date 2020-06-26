import 'package:flutter/material.dart';
import 'package:vapee/contact.dart';
import 'package:vapee/datapayment.dart';
import 'package:vapee/login.dart';
import 'package:vapee/package.dart';



class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.yellow[300],
      body: Stack(
        children: <Widget>[
          Container(
            child: ListView(
              padding: EdgeInsets.only(top: 150, left: 40, right: 40),
              children: <Widget>[
                new RaisedButton(
                  elevation: 0.0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  padding: EdgeInsets.only(left: 20),
                  child: new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Image.asset(
                        'image/owner.png',
                        height: 40.0,
                        width: 40.0,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            "Login / Register",
                            style: TextStyle(
                                fontSize: 11.0, fontWeight: FontWeight.bold),
                          )),
                      SizedBox(height: 55, width: 30),
                    ],
                  ),
                  textColor: Colors.black87,
                  color: Colors.yellow[200],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 0.0, right: 0.0),
                  child: new RaisedButton(
                    elevation: 0.0,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    onPressed: () {
                      // Navigator.push( context,
                      // MaterialPageRoute(
                      // builder: (context) => BustimePage()));
                    },
                    padding: EdgeInsets.only(left: 15),
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Image.asset(
                          'image/bustime.png',
                          height: 30.0,
                          width: 30.0,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: new Text(
                              "Bus Time / Book a ticket",
                              style: TextStyle(
                                  fontSize: 11.0, fontWeight: FontWeight.bold),
                            )),
                        SizedBox(height: 55, width: 30),
                      ],
                    ),
                    textColor: Colors.black87,
                    color: Colors.yellow[200],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, left: 0.0, right: 0.0),
                  child: new RaisedButton(
                    elevation: 0.0,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => DataPayment()));
                                              },
                                              padding: EdgeInsets.only(left: 20),
                                              child: new Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  new Image.asset(
                                                    'image/map.png',
                                                    height: 30.0,
                                                    width: 30.0,
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(left: 10.0),
                                                      child: new Text(
                                                        "Bus Tracking",
                                                        style: TextStyle(
                                                            fontSize: 11.0, fontWeight: FontWeight.bold),
                                                      )),
                                                  SizedBox(
                                                    height: 55,
                                                    width: 35,
                                                  ),
                                                ],
                                              ),
                                              textColor: Colors.black87,
                                              color: Colors.yellow[200],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10, left: 0.0, right: 0.0),
                                            child: new RaisedButton(
                                              elevation: 0.0,
                                              shape: new RoundedRectangleBorder(
                                                  borderRadius: new BorderRadius.circular(10.0)),
                                              onPressed: () {
                                                 Navigator.push(context,
                                                     MaterialPageRoute(builder: (_) => Package()));
                                              },
                                              padding: EdgeInsets.only(left: 20),
                                              child: new Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  new Image.asset(
                                                    'image/package.png',
                                                    height: 30.0,
                                                    width: 30.0,
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(left: 10.0),
                                                      child: new Text(
                                                        "Package Tracking",
                                                        style: TextStyle(
                                                            fontSize: 11.0, fontWeight: FontWeight.bold),
                                                      )),
                                                  SizedBox(height: 55, width: 30),
                                                ],
                                              ),
                                              textColor: Colors.black87,
                                              color: Colors.yellow[200],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(top: 10, left: 0.0, right: 0.0),
                                            child: new RaisedButton(
                                              elevation: 0.0,
                                              shape: new RoundedRectangleBorder(
                                                  borderRadius: new BorderRadius.circular(10.0)),
                                              onPressed: () {
                                                Navigator.pushReplacement(context,
                                                    MaterialPageRoute(builder: (_) => Contact()));
                                              },
                                              padding: EdgeInsets.only(left: 20),
                                              child: new Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  new Image.asset(
                                                    'image/info.png',
                                                    height: 30.0,
                                                    width: 30.0,
                                                  ),
                                                  Padding(
                                                      padding: EdgeInsets.only(left: 10.0),
                                                      child: new Text(
                                                        "Contact Us",
                                                        style: TextStyle(
                                                            fontSize: 11.0, fontWeight: FontWeight.bold),
                                                      )),
                                                  SizedBox(height: 55, width: 30),
                                                ],
                                              ),
                                              textColor: Colors.black87,
                                              color: Colors.yellow[200],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                          
                         
}
