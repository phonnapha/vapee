import 'package:flutter/material.dart';
import 'package:vapee/static/scaffold_layout.dart';
import 'package:vapee/views/contact_info_page.dart';
import 'package:vapee/views/login_page.dart';
import 'package:vapee/views/package_info_page.dart';
import 'package:vapee/views/payment_info_page.dart';

class HomePage extends StatelessWidget {
  Widget optionButton({
    BuildContext context,
    Function goTo,
    String imageName,
    String buttonText,
  }) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5.0),
      child: FlatButton(
        onPressed: goTo,
        padding: EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'image/$imageName',
              height: 40.0,
              width: 40.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                buttonText ?? '',
                style: TextStyle(
                  fontSize: 11.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 55, width: 30),
          ],
        ),
        textColor: Colors.black87,
        color: Colors.yellow[200],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
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
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Surin - Khonkean",
                        style: TextStyle(
                          color: Color(0XDD000000),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            optionButton(
              context: context,
              goTo: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              imageName: 'owner.png',
              buttonText: "Login / Register",
            ),
            optionButton(
              context: context,
              goTo: () {},
              imageName: 'bustime.png',
              buttonText: "Bus Time / Book a ticket",
            ),
            optionButton(
              context: context,
              goTo: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentInfoPage(),
                  ),
                );
              },
              imageName: 'map.png',
              buttonText: "Bus Tracking",
            ),
            optionButton(
              context: context,
              goTo: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PackageInfoPage(),
                  ),
                );
              },
              imageName: 'package.png',
              buttonText: "Package Tracking",
            ),
            optionButton(
              context: context,
              goTo: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactInfoPage(),
                  ),
                );
              },
              imageName: 'info.png',
              buttonText: "Contact Us",
            ),
          ],
        ),
      ),
    );
  }
}
