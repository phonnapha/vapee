import 'package:flutter/material.dart';

class ContactInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 70.0, left: 10.0, right: 10.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "บริษัท วาปีเดินรถ จำกัด",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[900],
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 5.0),
                ),
                Image.asset(
                  'image/bus.png',
                  height: 35.0,
                  width: 35.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    "ชื่อบริษัท : วาปีเดินรถ จำกัด",
                    style: TextStyle(
                      fontSize: 11.0,
                      color: Colors.grey[900],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Divider(
              color: Colors.black45,
              indent: 12.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(right: 5.0)),
                Image.asset(
                  'image/company.png',
                  height: 30.0,
                  width: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    "ประเภท : บริษัทจำกัด",
                    style: TextStyle(
                      fontSize: 11.0,
                      color: Colors.grey[900],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(right: 30.0)),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "ประเภทธุรกิจ : รับ - ส่งผู้โดยสารประจำทาง",
                    style: TextStyle(
                      fontSize: 11.0,
                      color: Colors.grey[900],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Divider(
              color: Colors.black45,
              indent: 12.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(right: 5.0)),
                Image.asset(
                  'image/location.png',
                  height: 30.0,
                  width: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    "ที่อยู่ : 58 ถ.พิทักษ์นรากร ต.หนองแสง",
                    style: TextStyle(
                      fontSize: 11.0,
                      color: Colors.grey[900],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 75.0),
              child: Text(
                "อ.วาปีปทุม จ.มหาสารคาม 44120",
                style: TextStyle(
                  fontSize: 11.0,
                  color: Colors.grey[900],
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Divider(
              color: Colors.black45,
              indent: 12.0,
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                ),
                Image.asset(
                  'image/phone.png',
                  height: 20.0,
                  width: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "เบอร์โทรศัพท์: 043-799 253",
                    style: TextStyle(
                      fontSize: 11.0,
                      color: Colors.grey[900],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
