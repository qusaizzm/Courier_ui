import 'package:new_app/constants.dart';
import 'package:new_app/screens/add_stor.dart';
import 'package:new_app/screens/car_services.dart';
import 'package:new_app/screens/menu.dart';
import 'package:new_app/shop/sadeBar/search.dart';
import 'package:new_app/shop/shop_screen.dart';
import 'package:new_app/styleguide/text_styles.dart';
import 'package:new_app/widgets/app_clipper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_app/screens/delivery.dart';
import 'dart:math' as math;

import 'package:new_app/widgets/bottombar.dart';

class HomeWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  HomeWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
//  List<FoodModel> foodList = FoodModel.list;
  PageController pageController = PageController(viewportFraction: .8);
  var paddingLeft = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        ofActive: false,
        homeActive: true,
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
                            padding: EdgeInsets.all(20.0),
                            //width: 360.0,
                            // height: 110.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(22.0),
                                  bottomRight: Radius.circular(22.0)),
                              color: const Color(0xffe2e3e3),
                            ),
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/img/head.JPG",
                                    width:
                                        MediaQuery.of(context).size.width / 2,
                                    fit: BoxFit.contain,
                                  ),
                                  Text("مع خدمات كورير خليك دايما مرتاج",
                                      style: normalBoldBlueStyle),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                _services(Icons.local_shipping, 'توصيل طلبات',
                                    () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Delivery()),
                                  );
                                }),
                                _services(Icons.directions_car, 'توصيل ركاب',
                                    () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CarServices()),
                                  );
                                }),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                // _services(Icons.add, 'اضف متجرك معنا', () {
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => AddStor()),
                                //   );
                                // }),
                                _services(
                                    Icons.shopping_cart, 'تسوق في متاجرنا', () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ShopScreen()),
                                  );
                                }),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                _services(Icons.ondemand_video, 'شاهد الفبديو',
                                    () {//Your Link
                                    }),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // SidebarLayout(),
                    ],
                  ),
                ),
              ),

//              _buildRightSection(),
            ),
            _sidebar(),
            _positioned(
                "الخدمات", "توصيل طليات", "توصبل ركاب", "تسوف في متجرنا"),
            Positioned(
              top: 70.0,
              left: 2.0,
              child: SearchBar(),
            ),
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
          // Icon(Icons.search),
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
      bottom: -110,
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
                    MaterialPageRoute(builder: (context) => Delivery()),
                  );
                }),
                _buildMenu(txt3, 2, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CarServices()),
                  );
                }),
                _buildMenu(txt4, 3, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddStor()),
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

  Widget _services(IconData icon, String title, onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(12.0),
          padding: EdgeInsets.all(12.0),
//            width: 89.0,
//            height: 92.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.0),
            color: const Color(0xffe2e3e3),
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(18.0),
                // width: 64.0,
                //height: 64.0,
                child: FaIcon(
                  icon,
                  color: Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xff0c2444),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 16.0),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

}