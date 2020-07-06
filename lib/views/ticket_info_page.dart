import 'package:flutter/material.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'package:vapee/views/home_page.dart';
import 'package:vapee/views/payment_info_page.dart';

class TicketInfoPage extends StatefulWidget {
  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketInfoPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  var title = '';
  // int _currentIndex = 0;

  final items = [
    "ไทยพาณิชย์ (SCB)",
    "กสิกรไทย (Kbank)",
    "กรุงไทย (KTB)",
    "กรุงศรี (BAY)",
    "ธนชาติ (Thanachart)",
    "ทหารไทย (TMB)",
    "ธ.ก.ส. (BAAC)",
    "ออมสิน (Government Savings Bank)"
  ];

  var selectedValue;
  Drawer drawer(context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      DrawerHeader(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //  Image.asset('',
              // width: 80.0,
              // height: 80.0,),
              Text('')
            ],
          ),
        ),
        decoration:
            BoxDecoration(color: Colors.blue, shape: BoxShape.rectangle),
      ),
      ListTile(
          leading: Image.asset(
            'image/homes.png',
            height: 20.0,
            width: 20.0,
          ),
          title: Text(
            "Home",
            style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => HomePage()));
          }),
      ListTile(
        leading: Image.asset(
          'image/buy.png',
          height: 20.0,
          width: 20.0,
        ),
        title: Text(
          "Panymant",
          style: TextStyle(
            fontSize: 11.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PaymentInfoPage()));
        },
      ),
      ListTile(
        leading: Image.asset(
          'image/busmap.png',
          height: 20.0,
          width: 20.0,
        ),
        title: Text(
          "Bus Tracking",
          style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.bold),
        ),
      ),
      ListTile(
        leading: Image.asset(
          'image/tracking.png',
          height: 20.0,
          width: 20.0,
        ),
        title: Text(
          "Package Tracking",
          style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.bold),
        ),
      ),
    ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.yellow[300],
        title: Text('Register'),
      ),
      body: Center(
          child: ListView(
        children: <Widget>[
          _buildNoElevation(),
        ],
      )),
    );
  }

  Widget _buildNoElevation() {
    return Column(children: <Widget>[
      Padding(padding: EdgeInsets.zero),
      SizedBox(
        height: 8.0,
      ),
      Padding(
          padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
          child: SingleChildScrollView(
              child: FormField<String>(builder: (FormFieldState<String> state) {
            return InputDecorator(
              decoration: InputDecoration(
                errorStyle: TextStyle(fontSize: 11.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              ),
              child: SearchableDropdown.single(
                value: selectedValue,
                hint: "Select one",
                searchHint: "Select one",
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
                isExpanded: true,
                dialogBox: false,
                menuConstraints: BoxConstraints.tight(Size.fromHeight(350.0)),
                items: items.map((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
              ),

              // ),
            );
          })))
    ]);
  }
}
