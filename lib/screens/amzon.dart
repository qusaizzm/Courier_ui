import 'package:new_app/screens/menu.dart';
import 'package:new_app/constants.dart';
import 'package:new_app/screens/my_orders.dart';
import 'package:new_app/styleguide/text_styles.dart';
import 'package:new_app/widgets/app_clipper.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class Amzon extends StatefulWidget {
  @override
  _AmzonState createState() => _AmzonState();
}

class _AmzonState extends State<Amzon> {
  PageController pageController = PageController(viewportFraction: .8);
  var paddingLeft = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 60),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: _searchTextField(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: Column(
//
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(30.0),
                                height: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  //color: blueColor,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(22.0),
                                  child: Image.asset(
                                    "assets/img/Pharmacy-Assistant.jpg",
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              _headText(),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 30.0, right: 30.0, bottom: 40),

//                          padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      " المقاس :",
                                      maxLines: 2,
                                      softWrap: true,
                                      style: TextStyle(
                                          color: Color(0xFF0C2444),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "M",
                                          maxLines: 2,
                                          softWrap: true,
                                          style: TextStyle(
                                              color: Color(0xFF0C2444),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Container(
                                          height: 20.0,
                                          width: 20.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            color: Colors.blue,
                                            //color: blueColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "M",
                                          maxLines: 2,
                                          softWrap: true,
                                          style: TextStyle(
                                              color: Color(0xFF0C2444),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Container(
                                          height: 20.0,
                                          width: 20.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            color: Colors.blue,
                                            //color: blueColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "M",
                                          maxLines: 2,
                                          softWrap: true,
                                          style: TextStyle(
                                              color: Color(0xFF0C2444),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Container(
                                          height: 20.0,
                                          width: 20.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            color: Colors.blue,
                                            //color: blueColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 30.0, right: 30.0, bottom: 40),

//                          padding: const EdgeInsets.all(8.0),

                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      " الالوان :",
                                      maxLines: 2,
                                      softWrap: true,
                                      style: TextStyle(
                                          color: Color(0xFF0C2444),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          height: 20.0,
                                          width: 20.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            color: Colors.black,
                                            //color: blueColor,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Container(
                                          height: 20.0,
                                          width: 20.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            color: Colors.blue,
                                            //color: blueColor,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Container(
                                          height: 20.0,
                                          width: 20.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            color: Colors.blue,
                                            //color: blueColor,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 30.0, right: 30.0, bottom: 40),

//                          padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text(
                                      " السعر :",
                                      maxLines: 2,
                                      softWrap: true,
                                      style: TextStyle(
                                          color: Color(0xFF0C2444),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "\$50",
                                      maxLines: 2,
                                      softWrap: true,
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    _btn('اطلب', () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyOrder()),
                                        // PagesTestWidget()),
                                      );
                                    })
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: _bar(),
                      ),
                      _barBottom(),
                    ],
                  ),
                ),
              ),

//              _buildRightSection(),
            ),
            _sidebar(),
            _positioned("اموزن", "هاي هيلز", "جوميا", " سوق الدهب    "),
          ],
        ),
      ),
    );
  }

  Widget _sidebar() {
    return Container(
      color: goldColor,
      height: MediaQuery.of(context).size.height,
      width: 60,
      padding: EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Menu()),
              );
            },
            child: Icon(Icons.menu),
          ),
          SizedBox(
            height: 10,
          ),
          Icon(Icons.search),
        ],
      ),
    );
  }

  Widget _buildMenu(String menu, int index, onTap) {
    return GestureDetector(
      onTap: () {
        setState(() {
          paddingLeft = index * 0.0;
        });
      },
      child: Container(
        width: 110.0,
        padding: EdgeInsets.only(top: 15),
        child: Center(
          child: GestureDetector(
            onTap: onTap,
            child: Text(
              menu,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _positioned(String txt1, String txt2, String txt3, String txt4) {
    return Positioned(
      bottom: -120,
      child: Transform.rotate(
        angle: -math.pi / 2,
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(width: 20.0),
                _buildMenu(txt1, 0, () {}),
                _buildMenu(txt2, 1, () {
                      // ignore: todo
        //TODO   // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => BookRide()),
                  // );
                }),
                _buildMenu(txt3, 2, () {
                      // ignore: todo
        //TODO    // your Navigator
                }),
                _buildMenu(txt4, 3, () {
                      // ignore: todo
        //TODO    // your Navigator
                }),
              ],
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              margin: EdgeInsets.only(right: paddingLeft),
              width: 150,
              height: 75,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipPath(
                      clipper: AppClipper(),
                      child: Container(
                        width: 150,
                        height: 70,
                        color: goldColor,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Transform.rotate(
                      angle: math.pi / 2,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Container(
                          margin: EdgeInsets.all(30.0),
                          height: 30.0,
                          width: 15.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _btn(String txt, onClick()) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding:
            EdgeInsets.only(top: 8.0, bottom: 8.0, left: 30.0, right: 30.0),
        //height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: blueColor,
        ),
        child: Center(child: Text(txt, style: normalWhiteStyle)),
      ),
    );
  }

  Widget _barBottom() {
    return Container(
      margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
      height: 5.0,
      width: 180.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Color(0xFF0C2444),
      ),
    );
  }

  Widget _bar() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
          height: 2.0,
          // width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color(0xFF0C2444),
          ),
        )
      ],
    );
  }

  Widget _searchTextField() {
    return TextFormField(
      style: TextStyle(fontSize: 16.0, color: Color(0xFF8D8D8D)),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3).withOpacity(0.8),
        enabledBorder: new OutlineInputBorder(
          borderSide: new BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(50.0),
        ),
        hintText: 'بحث',
        prefixIcon: Container(
          margin: EdgeInsets.only(left: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0)),
            color: Color(0xff0c2444),
          ),
          child: new IconButton(
              icon: new Icon(
                Icons.search,
                color: Color(0xFFd0ddec),
              ),
              onPressed: null),
        ),
        suffixIcon: Icon(
          Icons.mic_none,
          color: Color(0xff0c2444),
        ),
      ),
    );
  }

  Widget _headText() {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 100.0, top: 8.0, bottom: 8.0),
      child: Row(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              "تفاصيل الوجهه :",
              maxLines: 2,
              softWrap: true,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
