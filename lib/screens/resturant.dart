import 'package:new_app/screens/menu.dart';
import 'package:new_app/screens/my_orders.dart';
import 'package:flutter/material.dart';
import 'package:new_app/constants.dart';
import 'package:new_app/widgets/app_clipper.dart';
import 'dart:math' as math;
import 'package:new_app/widgets/bottombar.dart';

class Resturant extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  Resturant({Key key, this.parentScaffoldKey}) : super(key: key);

  @override
  _ResturantState createState() => _ResturantState();
}

class _ResturantState extends State<Resturant> {
  PageController pageController = PageController(viewportFraction: .8);
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
              padding: EdgeInsets.only(left: 60, top: 40),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                child: Image.asset(
                                  'assets/img/spectra.jpg',
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: Colors.transparent,
                            ),
                          ),
                          Text(
                            'إيطالي بيتزا',
                            style: TextStyle(color: Colors.red, fontSize: 18.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _tab(
                            'السندوشات',
                            Color(0xffe2e3e3),
                            Color(0xffd91f26),
                            true,
                            () {
                               // ignore: todo
        //TODO   // your Navigator
                            },
                          ),
                          _tab(
                            'الوجبات',
                            Color(0xfff3e0c8),
                            Color(0xff0c2444),
                            false,
                            () {
                               // ignore: todo
        //TODO   // your Navigator
                            },
                          ),
                          _tab(
                            'حلويات',
                            Color(0xfff3e0c8),
                            Color(0xff0c2444),
                            false,
                            () {
                               // ignore: todo
        //TODO   // your Navigator
                            },
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              _services("برقير عادي", "\$545",
                                  AssetImage("assets/img/Vector-28.png"), () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyOrder()),
                                );
                              }),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _services(
                                "برقير ",
                                "\$545",
                                AssetImage("assets/img/gift.png"),
                                () {
                                   // ignore: todo
        //TODO   // your Navigator
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _services(
                                "برقير عادي",
                                "\$5405",
                                AssetImage("assets/img/Vector-28.png"),
                                () {
                                   // ignore: todo
        //TODO   // your Navigator
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _services(
                                "برقير عادي",
                                "\$0",
                                AssetImage("assets/img/Vector-27.png"),
                                () {
                                   // ignore: todo
        //TODO   // your Navigator
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _services(
                                " عادي",
                                "\$545",
                                AssetImage("assets/img/Vector-28.png"),
                                () {
                                   // ignore: todo
        //TODO   // your Navigator
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _services(
                                "برقير عادي",
                                "\$545",
                                AssetImage("assets/img/Vector-28.png"),
                                () {
                                   // ignore: todo
        //TODO   // your Navigator
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

//
            ),
            _sidebar(),
            _positioned("السندوشات", "الوجبات", " حلويات", "ستاك"),
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
                  // Your  Navigator

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ProfileWidget()),
                  // );
                }),
                _buildMenu(txt3, 2, () {
                  // Your  Navigator
                }),
                _buildMenu(txt4, 3, () {
                  // Your  Navigator
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

  Widget _services(String name, String price, AssetImage img, onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(12.0),
          padding: EdgeInsets.all(6.0),
//            width: 89.0,
//            height: 92.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: const Color(0xffe2e3e3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.only(bottom: 8.0),
                // width: 64.0,
                //height: 64.0,
                child: Center(
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFF0C2444)),
                          borderRadius: BorderRadius.all(
                            Radius.circular(14),
                          ),
                          color: Colors.white,
                          image: DecorationImage(image: img)),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      name,
                      style: TextStyle(color: Colors.red, fontSize: 18.0),
                    ),
                    Text(
                      ' (جبنه+مشروم)',
                      style:
                          TextStyle(color: Color(0xFF8a8080), fontSize: 18.0),
                    ),
                  ]),
              SizedBox(
                height: 20.0,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      price,
                      style:
                          TextStyle(color: Colors.red.shade600, fontSize: 16.0),
                    ),
//                  SizedBox(
//                    height: 10.0,
//                  ),
                    Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xffe9d7be),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/img/shoppingCart.png',
                          width: 25,
                          height: 25,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tab(String txt, Color back, Color txtcol, bool border, onTap()) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.only(left: 12.0, right: 12.0),
        child: Text(
          txt,
          style: TextStyle(color: txtcol, fontSize: 18.0),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: back,
          border:
              border ? Border.all(width: 1.0, color: Color(0xff0c2444)) : null,
        ),
      ),
    );
  }
}
