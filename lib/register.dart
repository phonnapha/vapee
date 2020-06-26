import 'package:flutter/material.dart';
import 'package:vapee/login.dart';
import 'package:vapee/static/customstyle.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RegisterPageWidget();
  }
}

class RegisterPageWidget extends StatefulWidget {
  _RegisterPageWidget createState() => _RegisterPageWidget();

  
}

class _RegisterPageWidget extends State<RegisterPageWidget> {
  final idcontroller = TextEditingController();
  final usernamecontroller = TextEditingController();
  final passcontroller = TextEditingController();
  final namecontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();
  final telcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  String _picked;
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        // appBar: AppBar(
        // backgroundColor: Colors.yellow[300],
        //   title: Text('Register'),
        // ),
        body: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
              //  color: Colors.yellow[300],
              // decoration: BoxDecoration(
              //  gradient: LinearGradient(
              //    begin: Alignment.topLeft,
              //    end: Alignment.bottomLeft,
              //    stops: [0.5, 1],
              //    colors: [Colors.yellow[300], Colors.yellow[300]],
              //   ),
              // ),
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    width: 130.0,
                    height: 130.0,
                    child: Image.asset("image/user.png"),
                  ),
                  Center(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(right: 240.0, top: 30.0),
                              child: Text(
                                "ID :",
                                style: TextStyle(
                                    color: Colors.blue[500],
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(height: 5.0),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "ID",
                              hintStyle: TextStyle(fontSize: 11.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              contentPadding: new EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 10.0),
                            ),
                            autocorrect: false,
                            autovalidate: false,
                            controller: idcontroller,
                            validator: (value) {
                              if (value.isEmpty) return 'ID cannot be empty.';
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 190.0),
                              child: Text(
                                "Username :",
                                style: TextStyle(
                                    color: Colors.blue[500],
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(height: 5.0),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Username',
                              hintStyle: TextStyle(fontSize: 11.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              contentPadding: new EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 10.0),
                            ),
                            autocorrect: false,
                            autovalidate: false,
                            controller: usernamecontroller,
                            validator: (value) {
                              if (value.isEmpty)
                                return 'Username cannot be empty.';
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 220.0),
                              child: Text(
                                "Name:",
                                style: TextStyle(
                                    color: Colors.blue[500],
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(height: 5.0),
                          TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Name',
                                hintStyle: TextStyle(fontSize: 11.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                contentPadding: new EdgeInsets.symmetric(
                                    vertical: 5.0, horizontal: 10.0),
                              ),
                              autocorrect: false,
                              autovalidate: false,
                              controller: namecontroller,
                              validator: (value) {
                                if (value.isEmpty)
                                  return 'Name cannot be empty.';
                                return null;
                              }),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 190.0),
                              child: Text(
                                "Password :",
                                style: TextStyle(
                                    color: Colors.blue[500],
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(height: 5.0),
                          TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(fontSize: 11.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                contentPadding: new EdgeInsets.symmetric(
                                    vertical: 5.0, horizontal: 10.0),
                              ),
                              autocorrect: false,
                              autovalidate: false,
                              controller: passcontroller,
                              obscureText: true,
                              validator: (value) {
                                if (value.isEmpty)
                                  return 'Password cannot be empty.';
                                if (value != confirmpasswordcontroller.text)
                                  return 'Password doesn\'t match.';
                                return null;
                              }),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 140.0),
                              child: Text(
                                "Confrim Password:",
                                style: TextStyle(
                                    color: Colors.blue[500],
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(height: 5.0),
                          TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Confrim Password',
                                hintStyle: TextStyle(fontSize: 11.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                contentPadding: new EdgeInsets.symmetric(
                                    vertical: 5.0, horizontal: 10.0),
                              ),
                              autocorrect: false,
                              autovalidate: false,
                              controller: confirmpasswordcontroller,
                              obscureText: true,
                              validator: (value) {
                                if (value.isEmpty)
                                  return 'Confirm password cannot be empty.';
                                if (value != passcontroller.text)
                                  return 'Password doesn\'t match.';

                                return null;
                              }),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                              padding: EdgeInsets.only(right: 190.0),
                              child: Text(
                                "Telephone:",
                                style: TextStyle(
                                    color: Colors.blue[500],
                                    fontSize: 11.0,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(height: 5.0),
                          TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Telephone',
                                hintStyle: TextStyle(fontSize: 11.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                contentPadding: new EdgeInsets.symmetric(
                                    vertical: 5.0, horizontal: 10.0),
                              ),
                              keyboardType: TextInputType.number,
                              autocorrect: false,
                              autovalidate: false,
                              controller: telcontroller,
                              validator: (value) {
                                if (value.isEmpty)
                                  return 'Telephone cannot be empty.';
                                return null;
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          RadioButtonGroup(
                            orientation: GroupedButtonsOrientation.HORIZONTAL,
                            margin: const EdgeInsets.only(left: 100.0),
                            onSelected: (String selected) => setState(() {
                              
                              _picked = selected;
                            }),
                            labels: <String>[
                              "Female",
                              "Male",
                             
                            ],
                            picked: _picked,
                            labelStyle: TextStyle(fontSize: 11.0),
                            itemBuilder: (Radio rb, Text txt, int i) {
                              return Row(
                                children: <Widget>[
                                  rb,
                                  txt,
                                 
                                ],
                                 
                              );
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CustomStyle.createbutton(
                              title: 'Register',
                              color: Colors.blue[900],
                              shadowColor: Colors.black,
                              textColor: Colors.white,
                              function: () {
                                register();
                              },
                              width: 250),
                          SizedBox(
                            height: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _loading ? bodyProgress : SizedBox(),
          ],
        ));
  }

  var bodyProgress = new Container(
    child: new Stack(
      children: <Widget>[
        new Container(
          alignment: AlignmentDirectional.center,
          decoration: new BoxDecoration(
            color: Colors.white70,
          ),
          child: new Container(
            decoration: new BoxDecoration(
                color: Colors.purpleAccent[100],
                borderRadius: new BorderRadius.circular(10.0)),
            width: 300.0,
            height: 200.0,
            alignment: AlignmentDirectional.center,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Center(
                  child: new SizedBox(
                      height: 50.0,
                      width: 50.0,
                      child: LoadingJumpingLine.square(
                        borderColor: Colors.orange.shade200,
                        borderSize: 4.0,
                        size: 40.0,
                        backgroundColor: Colors.white,
                        duration: Duration(microseconds: 500),
                      )),
                ),
                new Container(
                  margin: const EdgeInsets.only(top: 25.0),
                  child: new Center(
                    child: new Text(
                      "loading.. wait...",
                      style: new TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
  void register() async {
    // try {
    //   if (_formKey.currentState.validate()) {
    //     setState(() {
    //       _loading = true;
    //     });
    //     String username = usernamecontroller.text;
    //     String name = namecontroller.text;
    //     String pass = passcontroller.text;
    //     String tel = telcontroller.text;
    //     if (imgbase64 == null) {
    //       _scaffoldKey.currentState.showSnackBar(SnackBar(
    //         content: Text("Please select some picture."),
    //       ));
    //       return;
    //     }
    //     String pic = imgbase64;

    // APIService apiService = new APIService();
    // var result = await apiService.register(username, pass, name, tel, pic);
    // if (result) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => LoginPage()));
    // } else {
    //   _scaffoldKey.currentState.showSnackBar(SnackBar(
    //     content: Text(apiService.message),
    //   ));
    // }
  }
  //   } catch (e) {
  //     print(e);
  //   } finally {
  //     setState(() {
  //       _loading = false;
  //     });
  //   }
  // }
}
