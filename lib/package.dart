import 'package:flutter/material.dart';
import 'package:vapee/static/customstyle.dart';
// import 'package:flappy_search_bar/flappy_search_bar.dart';

class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

class Package extends StatefulWidget {
  @override
  _PackagePageState createState() => _PackagePageState();
}

class _PackagePageState extends State<Package> {
  final focus = FocusNode();
  final packagecontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return Post(
        "Title : $search $index",
        "Description :$search $index",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.yellow[300],
          title: Text(
            'Vapee Tracking',
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(child: 
          Container(
              child: ListView(children: <Widget>[
            new Container(
              child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Image.asset(
                      'image/tracking.png',
                      width: 100.0,
                      height: 100.0,
                    ),
                    new Text(
                      'กรอกหมายเลขพัสดุ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
              // decoration: new BoxDecoration(
              //     color: Colors.yellow[300], shape: BoxShape.rectangle),
            ),
            Container(
                margin: EdgeInsets.only(top: 0.0),
                padding: EdgeInsets.only(top: 5.0, right: 20.0, left: 20.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                    
                        SizedBox(height: 15.0),
                        Padding(
                            padding: EdgeInsets.only(right: 0.0),
                            child: Text(
                              "1. กรอกรหัสพัสดุที่ได้รับจากใบเสร็จการส่งพัสดุ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11.0,
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(right: 170.0),
                            child: Text("2. กดปุ่ม 'ติดตาม' ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11.0,
                                ))),
                        SizedBox(height: 10.0),
                        
                        // Padding(
                          
                        //   padding: const EdgeInsets.only(top: 0.0, right: 20.0, left: 20.0),
                        //   child: SearchBar<Post>(
                        //     onSearch: search,
                        //     onItemFound: (Post post, int index) {
                        //       return ListTile(
                        //         title: Text(post.title),
                        //         subtitle: Text(post.description),
                        //       );
                        //     },
                        //   ),
                        // ),

                        TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            hoverColor: Colors.white,
                            hintText: 'หมายเลขพัสดุ',
                            hintStyle: TextStyle(fontSize: 11.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            contentPadding: new EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 15.0),
                          ),
                          autocorrect: false,
                          autovalidate: false,
                          controller: packagecontroller,
                          validator: (value) {
                            if (value.isEmpty)
                              return 'Username cannot be empty.';

                            return null;
                          },
                          onFieldSubmitted: (v) {
                            FocusScope.of(context).requestFocus(focus);
                          },
                        ),
                        SizedBox(height: 10.0),
                        CustomStyle.createbutton(
                            title: 'ติดตามพัสดุ',
                            color: Colors.blue[800],
                            shadowColor: Colors.black,
                            textColor: Colors.white,
                            function: () {
                              tracking();
                            },
                            width: 70),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
          )
        )
    ]))));
  }

  void tracking() async {}

}
