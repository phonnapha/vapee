import 'package:flutter/material.dart';
import 'package:vapee/register.dart';
import 'package:vapee/static/customstyle.dart';
import 'package:vapee/ticket.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginPage> {
  final focus = FocusNode();
  final idcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      
      // backgroundColor: Colors.yellow[300],
     
      body: Stack(
        children: <Widget>[
          Container(
            child: ListView(
              children: <Widget>[
                Builder(
                  builder: (context) => Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 40.0),
                        ),
                        Container(
                          child: Image.asset("image/owner.png"),
                          width: 150.0,
                          height: 150.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0.0),
                          padding: EdgeInsets.all(20),
                          child: Form(
                            key: _formKey,
                            child: Column(children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(right: 200.0),
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
                                  fillColor: Colors.white,
                                  hoverColor: Colors.white,
                                  hintText: 'Username',
                                  hintStyle: TextStyle(fontSize: 11.0),

                                  //     labelText: 'Username',
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.red[900],
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  contentPadding: new EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 15.0),
                                ),
                                autocorrect: false,
                                autovalidate: false,
                                controller: idcontroller,
                                validator: (value) {
                                  if (value.isEmpty)
                                    return 'Username cannot be empty.';

                                  return null;
                                },
                                onFieldSubmitted: (v) {
                                  FocusScope.of(context).requestFocus(focus);
                                },
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(right: 200.0),
                                  child: Text(
                                    'Password :',
                                    style: TextStyle(
                                        color: Colors.blue[500],
                                        fontSize: 11.0,
                                        fontWeight: FontWeight.bold),
                                  )),
                              SizedBox(height: 5.0),
                              TextFormField(
                                  focusNode: focus,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: TextStyle(fontSize: 11.0),
                                    //  labelText: 'Password',
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    contentPadding: new EdgeInsets.symmetric(
                                        vertical: 5.0, horizontal: 15.0),
                                  ),
                                  autocorrect: false,
                                  autovalidate: false,
                                  controller: passcontroller,
                                  obscureText: true,
                                  validator: (value) {
                                    if (value.isEmpty)
                                      return 'Password cannot be empty.';

                                    return null;
                                  }),
                              SizedBox(
                                height: 30,
                              ),
                              CustomStyle.createbutton(
                                  title: 'Login',
                                  color: Colors.blue[800],
                                  shadowColor: Colors.black,
                                  textColor: Colors.white,
                                  function: () {
                                    login();
                                  },
                                  width: 150),
                              SizedBox(
                                height: 20,
                              ),
                              CustomStyle.createbutton(
                                  title: 'Register',
                                  color: Colors.blue[800],
                                  shadowColor: Colors.black,
                                  textColor: Colors.white,
                                  function: () {
                                    register();
                                  },
                                  width: 150),
                              SizedBox(
                                height: 20,
                              ),
                            ]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          _loading ? bodyProgress : SizedBox(),
        ],
      ),
    );
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

  void login() async {
    // try {
    //   if (_formKey.currentState.validate()) {
    //     setState(() {
    //       _loading = true;
    //     });
    //     APIService apiService = new APIService();
    //     var result =
    //         await apiService.login(idcontroller.text, passcontroller.text);
    //     if (result) {

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => Ticket()));
    }

    void register() async {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => RegisterPage()));
    }
    //   else
    //     _scaffoldKey.currentState.showSnackBar(SnackBar(
    //       content: Text(apiService.message),
    //     ));
    // }
    // } catch (e) {
    //   _scaffoldKey.currentState.showSnackBar(SnackBar(
    //     content: Text(e),
    //   ));
    // } finally {
    //   setState(() {
    //     _loading = false;
    //   });
    // }
  }

//   void register() async {
//         Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (_) => RegisterPage()));
//     }
// }

mixin LoadingJumpingLine {
  static square(
      {Color borderColor,
      double borderSize,
      double size,
      Color backgroundColor,
      Duration duration}) {}
}
