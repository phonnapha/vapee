import 'dart:io';
import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:searchable_dropdown/searchable_dropdown.dart';
import 'package:image_picker/image_picker.dart';

class PaymentInfoPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentInfoPage> {
  final format = DateFormat("dd-MM-yyyy");
  final formatt = DateFormat("HH:mm");
  DateTime dateTime;
  Duration duration;

  set date(String date) {}
  File file;
  var currenSlectedValue;

  @override
  void initState() {
    dateTime = DateTime.now();
    duration = Duration(minutes: 10);
    super.initState();
  }

  TimeOfDay time;

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
              padding: EdgeInsets.all(0.0),
              child: ListView(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  children: <Widget>[
                    SizedBox(height: 15.0),
                    showTitle('อัพโหลดหลักฐานการชำระเงิน :'),
                    SizedBox(height: 5.0),
                    groupImage(),
                    SizedBox(height: 5.0),
                    showTitle('วันที่โอนเงิน :'),
                    dateForm(),
                    SizedBox(height: 5.0),
                    showTitle('เวลาโอนเงิน :'),
                    timeForm(),
                    SizedBox(height: 5.0),
                    showTitle('โอนจากธนาคาร :'),
                    bankForm(),
                    SizedBox(height: 5.0),
                    showTitle('โอนไปยัง :'),
                    banksForm(),
                  ]))
        ]));
  }

  Widget dateForm() => Container(
        width: 100.0,
        child: DateTimeField(
          decoration: InputDecoration(
            hintText: 'วันที่โอนเงิน',
            hintStyle: TextStyle(fontSize: 11.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          ),
          format: format,
          onShowPicker: (context, currentValue) {
            return showDatePicker(
              context: context,
              firstDate: DateTime(DateTime.now().year - 5),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(DateTime.now().year + 5),
            );
          },
        ),
      );

  Widget timeForm() => Container(
      width: 200.0,
      child: DateTimeField(
          decoration: InputDecoration(
            hintText: 'เวลาโอนเงิน',
            hintStyle: TextStyle(fontSize: 11.0),
            // labelText: 'เวลาโอนเงิน',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),

            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          ),
          format: formatt,
          onShowPicker: (context, currentValue) async {
            final time = await showTimePicker(
              context: context,
              initialTime:
                  TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
            );
            return DateTimeField.convert(time);
          }));

  Widget bankForm() => Container(
      width: 200.0,
      child: SingleChildScrollView(
          // child: FormField<String>(builder: (FormFieldState<String> state) {
          child: InputDecorator(
              decoration: InputDecoration(
                errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
              ),
              child: SearchableDropdown.single(
                hint: Text('โอนจากธนาคาร'),
                style: TextStyle(fontSize: 11.0),
                value: currenSlectedValue,
                searchHint: "โอนจากธนาคาร",
                onChanged: (value) {
                  setState(() {
                    currenSlectedValue = value;
                  });
                },
                dialogBox: false,
                isExpanded: true,
                menuConstraints: BoxConstraints.tight(Size.fromHeight(350)),
                items: items.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ))));

  Widget banksForm() => Container(
      width: 200.0,
      child: SingleChildScrollView(
          // child: FormField<String>(builder: (FormFieldState<String> state) {
          child: InputDecorator(
              decoration: InputDecoration(
                errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
              ),
              child: SearchableDropdown.single(
                hint: Text('โอนไปยัง'),
                style: TextStyle(fontSize: 11.0),
                value: currenSlectedValue,
                searchHint: "โอนไปยัง",
                onChanged: (value) {
                  setState(() {
                    currenSlectedValue = value;
                  });
                },
                dialogBox: false,
                isExpanded: true,
                menuConstraints: BoxConstraints.tight(Size.fromHeight(350)),
                items: items.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ))));
  Row groupImage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
            icon: Icon(Icons.add_a_photo),
            onPressed: () => chooseImage(ImageSource.camera)),
        Container(
          width: 150.0,
          height: 150.0,
          child:
              file == null ? Image.asset('image/upload.png') : Image.file(file),
        ),
        IconButton(
          icon: Icon(Icons.add_photo_alternate),
          onPressed: () => chooseImage(ImageSource.gallery),
        ),
      ],
    );
  }

  Future<Null> chooseImage(ImageSource source) async {
    try {
      var image = await ImagePicker()
          .getImage(source: source, maxWidth: 800.0, maxHeight: 800.0);
      setState(() {
        file = File(image.path);
      });
    } catch (e) {}
  }

  Row showTitle(String string) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 40.0, left: 0.0),
          child: Text(string),
        ),
      ],
    );
  }
}
