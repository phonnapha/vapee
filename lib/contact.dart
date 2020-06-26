import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<Contact> {
  // final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // key: _scaffoldKey,
        // appBar: AppBar(
        // backgroundColor: Colors.yellow[300],
        //   title: Text('Register'),
        // ),
        body: Stack(children: <Widget>[
      Container(
          child: ListView(
              padding: EdgeInsets.only(top: 70.0, left: 10.0, right: 10.0),
              children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "บริษัท วาปีเดินรถ จำกัด",
                style: TextStyle(
                    fontSize: 20.0,
                    // fontWeight: FontWeight.bold,
                    color: Colors.grey[900]),
              ),
            ),
            SizedBox(height: 15.0),
            new Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(right: 5.0)),
                new Image.asset(
                  'image/bus.png',
                  height: 35.0,
                  width: 35.0,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: new Text(
                      "ชื่อบริษัท : วาปีเดินรถ จำกัด",
                      style: TextStyle(fontSize: 11.0, color: Colors.grey[900]),
                    )),
              ],
            ),
            SizedBox(height: 15.0),
            new Divider(
              color: Colors.black45,
              indent: 12.0,
            ),
            new Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Padding(padding: EdgeInsets.only(right: 5.0)),
              new Image.asset(
                'image/company.png',
                height: 30.0,
                width: 30.0,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: new Text(
                    "ประเภท : บริษัทจำกัด",
                    style: TextStyle(fontSize: 11.0, color: Colors.grey[900]),
                  )),
            ]),
            SizedBox(height: 5.0),
            new Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Padding(padding: EdgeInsets.only(right: 30.0)),
              Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: new Text(
                    "ประเภทธุรกิจ : รับ - ส่งผู้โดยสารประจำทาง",
                    style: TextStyle(fontSize: 11.0, color: Colors.grey[900]),
                  )),
            ]),
            SizedBox(height: 15.0),
             new Divider(
              color: Colors.black45,
              indent: 12.0,
            ),
            new Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(right: 5.0)),
                new Image.asset(
                  'image/location.png',
                  height: 30.0,
                  width: 30.0,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: new Text(
                      "ที่อยู่ : 58 ถ.พิทักษ์นรากร ต.หนองแสง",
                      style: TextStyle(fontSize: 11.0, color: Colors.grey[900]),
                    )),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(left: 75.0),
                child: Text(
                  "อ.วาปีปทุม จ.มหาสารคาม 44120",
                  style: TextStyle(fontSize: 11.0, color: Colors.grey[900]),
                )),
            SizedBox(height: 15.0),
             new Divider(
              color: Colors.black45,
              indent: 12.0,
            ),
            SizedBox(height: 5.0),
            new Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Padding(padding: EdgeInsets.only(right: 10.0)),
              new Image.asset(
                'image/phone.png',
                height: 20.0,
                width: 20.0,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: new Text(
                    "เบอร์โทรศัพท์: 043-799 253",
                    style: TextStyle(fontSize: 11.0, color: Colors.grey[900]),
                  )),
            ])
          ]))
    ]));
  }
}
