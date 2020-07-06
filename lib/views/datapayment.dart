import 'package:flutter/material.dart';
import 'package:vapee/views/payment_info_page.dart';
import 'package:vapee/static/customstyle.dart';

class DataPayment extends StatefulWidget {
  @override
  _DataPaymentPageState createState() => _DataPaymentPageState();
}

class _DataPaymentPageState extends State<DataPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'ข้อมูลการชำระเงิน',
            style: TextStyle(fontSize: 14.0),
          ),
          backgroundColor: Colors.yellow[200],
        ),
        body: Stack(children: <Widget>[
          Container(
              width: 350.0,
              height: 70,
              padding: EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 14.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400]),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text('ยอดชำระเงินทั้งหมด',
                    style: TextStyle(fontSize: 11.0)),
              )),
          Padding(
            padding: EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
            child: Text(
                '1. ท่านสามารถชำระเงินผ่านตู้ ATM หรือหน้าเคาท์เตอร์ธนาคาร ได้เช่นกัน',
                style: TextStyle(fontSize: 11.0)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 120.0, left: 10.0, right: 10.0),
            child: Container(
              width: 350.0,
              height: 110.0,
              child: Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 14.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400]),
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text('ธนาคารกรุงไทย',
                    style:
                        TextStyle(fontSize: 11.0, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20.0, top: 165.0),
              child: Text(
                "ชื่อบัญชี : บริษัท วาปีเดิน จำกัด",
                style: TextStyle(fontSize: 11.0),
              )),
          Padding(
              padding: EdgeInsets.only(left: 20.0, top: 190.0),
              child: Text(
                "เลขที่่บัญชี : 326 147 859",
                style: TextStyle(fontSize: 11.0),
              )),
          Padding(
              padding: EdgeInsets.only(left: 20.0, top: 240.0, right: 20.0),
              child: Text(
                "2. เก็บหลักฐานการโอนเงินและอัพโหลดสลิปภายใน 30 นาที ก่อนรถออก",
                style: TextStyle(fontSize: 11.0),
              )),
          Padding(
              padding: EdgeInsets.only(left: 20.0, top: 295.0, right: 20.0),
              child: Text(
                "3. เพื่อความรวดเร็วในการยืนยันการชำระเงินของท่าน ขอแนะนำให้ท่านอัพโหลดหลักฐานการชำระเงินของท่าน",
                style: TextStyle(fontSize: 11.0),
              )),
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 370.0, right: 10.0),
            child: CustomStyle.createbutton(
                title: 'มีหลักฐานการชำระเงิน อัพโหลดเลย',
                color: Colors.blue[800],
                shadowColor: Colors.black,
                textColor: Colors.white,
                function: () {
                  add();
                },
                width: 350),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 430.0, right: 10.0),
            child: CustomStyle.createbutton(
                title: 'ไม่มีหลักฐานการชำระเงิน อัพโหลดทีหลัง',
                color: Colors.white,
                shadowColor: Colors.black,
                textColor: Colors.blue[800],
                function: () {
                  cancel();
                },
                width: 350),
          ),
        ]));
  }

  void add() async {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => PaymentInfoPage()));
  }
}

void cancel() {}
