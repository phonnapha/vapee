import 'package:flutter/material.dart';
import 'package:vapee/main.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:vapee/payment.dart';

class Ticket extends StatefulWidget {
  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<Ticket> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  var title = '';
  int _currentIndex = 0;

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
    return new Drawer(
        child: new ListView(padding: EdgeInsets.zero, children: <Widget>[
      new DrawerHeader(
        child: new Container(
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                // new Image.asset('',
                // width: 80.0,
                // height: 80.0,),
                new Text('')
              ]),
        ),
        decoration:
            new BoxDecoration(color: Colors.blue, shape: BoxShape.rectangle),
      ),
      new ListTile(
          leading: new Image.asset(
            'image/homes.png',
            height: 20.0,
            width: 20.0,
          ),
          title: new Text(
            "Home",
            style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => MyApp()));
          }),
      new ListTile(
        leading: new Image.asset(
          'image/buy.png',
          height: 20.0,
          width: 20.0,
        ),
        title: new Text(
          "Panymant",
          style: TextStyle(
            fontSize: 11.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PaymentPage()));
        },
      ),
      new ListTile(
        leading: new Image.asset(
          'image/busmap.png',
          height: 20.0,
          width: 20.0,
        ),
        title: new Text(
          "Bus Tracking",
          style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.bold),
        ),
      ),
      new ListTile(
        leading: new Image.asset(
          'image/tracking.png',
          height: 20.0,
          width: 20.0,
        ),
        title: new Text(
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
        
        bottomNavigationBar: BottomAppBar(
          child:
           
          ),
        
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
                    new EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
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
