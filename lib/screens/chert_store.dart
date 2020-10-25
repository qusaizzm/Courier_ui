import 'package:new_app/screens/menu.dart';
import 'package:new_app/constants.dart';
import 'package:new_app/screens/amzon.dart';
import 'package:new_app/widgets/app_clipper.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ChartStore extends StatefulWidget {
  ChartStore({Key key}) : super(key: key);

  @override
  _ChartStoreState createState() => _ChartStoreState();
}

class _ChartStoreState extends State<ChartStore> {
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
              padding: EdgeInsets.only(left: 60, top: 40),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _tab('الكل', Color(0xffe2e3e3), Color(0xffd91f26),
                              true),
                          _tab('ملابس', Color(0xfff3e0c8), Color(0xff0c2444),
                              false),
                          _tab(' احذيه  ', Color(0xfff3e0c8), Color(0xff0c2444),
                              false),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              _services(
                                  'امزون للملابس',
                                  AssetImage("assets/img/loca.JPG"),
                                  'لارفي الملابس نساء واطفال ', () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Amzon()),
                                );
                              }),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _services(
                                  'هاي هيلز لاحذيه',
                                  AssetImage("assets/img/gift.png"),
                                  'كل ما بخص السيده  المصرية', () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Amzon()),
                                );
                              }),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _services(
                                  'محوهرات ناسي',
                                  AssetImage("assets/img/gift.png"),
                                  '       لارفي التشكيلات المصرية', () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Amzon()),
                                );
                              }),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              _services(
                                  'محوهرات تبوك',
                                  AssetImage("assets/img/gift.png"),
                                  'اطلب الان  ', () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Amzon()),
                                );
                              }),
                            ],
                          ),
                        ],
                      ),
                      // SidebarLayout(),
                    ],
                  ),
                ),
              ),

//              _buildRightSection(),
            ),
            _sidebar(),
            _positioned("جوميا  ", " امزون  ", "  المتجر  ", "   تراتدي  "),
          ],
        ),
      ),
    );
  }

  Widget _services(String title, AssetImage icon, String details, onHand()) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.only(left: 0.0),
        width: 89.0,
//            height: 92.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.0),
          color: const Color(0xffe2e3e3),
        ),
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
//          padding: EdgeInsets.all(18.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  onHand();
                },
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(18.0),
//                  margin: EdgeInsets.only(left: 18.0, bottom: 8.0),
                    width: 64.0,
                    height: 64.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      image: DecorationImage(image: icon, fit: BoxFit.cover),
                      color: const Color(0xfffffff),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(color: Colors.red, fontSize: 18.0),
                    ),
                    Text(
                      details,
                      style:
                          TextStyle(color: Color(0xFF8a8080), fontSize: 18.0),
                    ),
                  ]),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tab(String txt, Color back, Color txtcol, bool border) {
    return Container(
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
        //TODO   // your Navigator
                }),
                _buildMenu(txt4, 3, () {
                   // ignore: todo
        //TODO   // your Navigator
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
}
