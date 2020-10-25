import 'package:new_app/constants.dart';
import 'package:new_app/screens/add_driver.dart';
import 'package:new_app/screens/book_ride.dart';
import 'package:new_app/screens/menu.dart';
import 'package:new_app/screens/trevel_details.dart';
import 'package:new_app/widgets/app_clipper.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:new_app/widgets/bottombar.dart';

class Trevel extends StatefulWidget {
  @override
  _TrevelState createState() => _TrevelState();
}

class _TrevelState extends State<Trevel> {
  var paddingLeft = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        ofActive: false,
        homeActive: false,
        proActive: false,
      ),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            //width: 360.0,
                            // height: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(22.0),
                                  bottomRight: Radius.circular(22.0)),
                              color: const Color(0xffe2e3e3),
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: GestureDetector(
                                      onTap: () {Navigator.pop(context);},
                                      child: Icon(Icons.arrow_back_ios),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/img/head.JPG",
                                      width:
                                          MediaQuery.of(context).size.width /
                                              2,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                _headTextIcon("جدولة السفر :"),
                                _bar(),
                                Text(
                                  " الان مع كوراير يمكنك جدوله سفرك و حجز سيارة لتقلك.",
                                  maxLines: 2,
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Color(0xFF0C2444),
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                _headText("تفاصيل الوجهه  :"),
                                _bar(),
                                _filedAndText("الوجهة", ' مثل : جده'),
                                _filedAndText("تاريخ الانطلاق", '2020/01/01'),
                                _filedAndText(
                                  "زمن الانطلاق",
                                  '2:00 AM',
                                ),
                                _filedAndText("تاريخ الرجوع", ' 2020/01/01'),
                                _filedAndText(
                                  "زمن الرجوع",
                                  '2:00 AM',
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                _btn(),
                                _barBottom(),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),


            _sidebar(),
            _positioned("جدولة السفر", "مشوار", "سائق خاص", "الملك فهد"),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BookRide()),
                  );
                }),
                _buildMenu(txt3, 2, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddDeriver()),
                  );
                }),
                _buildMenu(txt4, 3, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Trevel()),
                  );
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

  Widget _headText(String txt) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 0, top: 8.0, bottom: 0),
      child: Row(
        children: <Widget>[
//
          Text(
            txt,
            maxLines: 2,
            softWrap: true,
            style: TextStyle(
                color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _headTextIcon(String txt) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.local_car_wash,
          color: Colors.red,
          size: 35.0,
        ),
        Text(
          txt,
          maxLines: 2,
          softWrap: true,
          style: TextStyle(
              color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
//          SizedBox(),
      ],
    );
  }

  Widget _filedAndText(String txt, String hit) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            txt,
            maxLines: 2,
            softWrap: true,
            style: TextStyle(
                color: Color(0xFF0C2444),
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
          ),
        ),

        Expanded(
          child: _textField(hit),
        )

//
      ],
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

  Widget _btn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TrevelDetails()),
          // PagesTestWidget()),
        );
      },
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Color(0xFF0C2444),
        ),
        child: Center(
            child: Text(
          'حجز',
          style: TextStyle(fontSize: 18, color: Colors.white),
        )),
      ),
    );
  }

  Widget _textField(String hitTxt) {
    return new Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new TextField(
          style: TextStyle(
              fontSize: 15.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
          decoration: InputDecoration(
            focusColor: Colors.transparent,
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            filled: true,
            fillColor: Color(0xFFE2E3E3),
            enabledBorder: new OutlineInputBorder(
              borderSide: new BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: hitTxt,
          ),
        ),
      ),
    );
  }
}
