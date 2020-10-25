import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_app/constants.dart';
import 'package:new_app/screens/menu.dart';
import 'package:new_app/screens/product.dart';
import 'package:new_app/styleguide/text_styles.dart';
import 'package:new_app/widgets/app_clipper.dart';
import 'dart:math' as math;
import 'package:new_app/widgets/bottombar.dart';

class Dimaant extends StatefulWidget {
  @override
  _DimaantState createState() => _DimaantState();
}

class _DimaantState extends State<Dimaant> {
  PageController pageController = PageController(viewportFraction: .8);
  var paddingLeft = 0.0;

  @override
  Widget build(BuildContext context) {
    final List<String> pro = ModalRoute.of(context).settings.arguments;

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
              padding: EdgeInsets.only(left: 60, top: 20),
              child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back_ios),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: _searchTextField(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 14.0, right: 14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(12.0),
                              // width: 89.0,
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.0),
                                border: Border.all(color: blueColor),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(22.0),
                                child: Container(
                                  child: CarouselSlider(
                                    options: CarouselOptions(
                                      aspectRatio: 2.0,
                                      autoPlay: true,
                                      scrollDirection: Axis.horizontal,
                                      enlargeCenterPage: true,
                                      enlargeStrategy:
                                          CenterPageEnlargeStrategy.height,
                                      autoPlayInterval: Duration(seconds: 2),
                                      autoPlayAnimationDuration:
                                          Duration(milliseconds: 500),
                                      reverse: false,
                                      initialPage: 0,
                                      autoPlayCurve:
                                          Curves.fastLinearToSlowEaseIn,
                                    ),
                                    items: pro.map((e) {
                                      return Builder(
                                          builder: (BuildContext context) {
                                        return Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Center(
                                            child: Container(
                                              // width: 120,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(e),
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ),

                            ////
                            fliedRow('المقاس :', "12 او 20"),
                            fliedRow('العيار :', "21"),
                            fliedRow('الصناعة :', " السودان - مصر"),
                            fliedRow('الوزن :', "100 جرام "),
                            SizedBox(
                              height: 15.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  " السعر",
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
                                SizedBox(
                                  width: 10.0,
                                ),
                                _btn('اطلب', () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductInfo()),
                                  );
                                })
                              ],
                            ),
                          ],
                        ),
                      ),
                      _barBottom(),
                    ],
                  ),
                ),
              ),
            ),

//              _buildRightSection(),
            _sidebar(),
            _positioned("مجوهرات", "هاي هليز", "جوميا", " سوف الدهب"),
          ],
        ),
      ),
    );
  }

  Widget fliedRow(String title, String hintTxt) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width / 6,
          child: Text(
            title,
            maxLines: 2,
            softWrap: true,
            style: TextStyle(
                color: Color(0xFF0C2444),
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
          ),
        ),

        _textFieldIcon(hintTxt),
//
      ],
    );
  }

  Container buildContainer(List<String> imgList1) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          scrollDirection: Axis.vertical,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayAnimationDuration: Duration(milliseconds: 500),
          reverse: false,
          initialPage: 0,
          autoPlayCurve: Curves.fastLinearToSlowEaseIn,
        ),
        items: imgList1.map((e) {
          return Builder(builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(e),
                    fit: BoxFit.fitWidth,
                  )),
                ),
              ),
            );
          });
        }).toList(),
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
                  // Navigator.push(
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

  Widget _textFieldIcon(txtHintIcon) {
    return new Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new TextField(
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
          decoration: InputDecoration(
            focusColor: Colors.transparent,
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            filled: true,
            fillColor: Color(0xFFE2E3E3),
//            icon: Icon(Icons.keyboard_arrow_down),
            enabledBorder: new OutlineInputBorder(
              borderSide: new BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            prefixIcon: Icon(Icons.keyboard_arrow_down),

            hintText: txtHintIcon,
          ),
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
}
