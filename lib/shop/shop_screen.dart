import 'package:flutter/material.dart';
import 'package:new_app/constants.dart';
import 'package:new_app/screens/add_stor.dart';
import 'package:new_app/screens/car_services.dart';
import 'package:new_app/screens/delivery.dart';
import 'package:new_app/screens/menu.dart';
import 'package:new_app/shop/Product.dart';
import 'package:new_app/shop/cart.dart';
import 'package:new_app/shop/product_carousel.dart';
import 'package:new_app/shop/sadeBar/search.dart';
import 'package:new_app/widgets/app_clipper.dart';
import 'dart:math' as math;
import 'package:new_app/widgets/bottombar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  var paddingLeft = 0.0;
  List<String> pro = ["bbb", "111111"];

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
                      _appBar(),
                      SizedBox(height: 30.0),
                      _sidlerImg(),
                      ProductCarousel(
                        title: 'ملابس',
                        products: tShert,
                        // press: () {
                        //   print("jhjhjhjhj");
                        //   _routeingNav().push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Dimaant(),
                        //         settings: RouteSettings(arguments:products[context].name),
                        //         ),
                        //   );
                        // },
                      ),
                      ProductCarousel(
                        title: 'مجوهلات',
                        products: books,
                        // press: () {
                        //   print("jhjhjhjhj");
                        //   // Navigator.push(
                        //   //   context,
                        //   //   MaterialPageRoute(
                        //   //     builder: (context) => ProductDetails(productName: products[context].name ,),
                        //   //   ),
                        //   // );
                        // },
                      ),
                      ProductCarousel(
                        title: 'اطفال',
                        products: books,
                      ),
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
              child: SearchBar(),),
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
}

// ignore: camel_case_types
// ignore: must_be_immutable
// ignore: camel_case_types
class _sidlerImg extends StatelessWidget {
  List<String> imgList = [
    'assets/img/00.jpg',
    'assets/img/01.jpg',
    'assets/img/02.jpg',
    'assets/img/03.jpg',
    'assets/img/2.jpg',
    //  Image.asset(
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CarouselSlider(
          options: CarouselOptions(
              height: 800.0,
              autoPlay: true,
              scrollDirection: Axis.horizontal,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 700)),
          items: imgList.map((e) {
            return Builder(builder: (BuildContext context) {
              return Container(
                // height: 300,
                // padding: EdgeInsets.symmetric(vertical: 30),
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(color: Colors.amber),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(e),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
              );
            });
          }).toList(),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _appBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                // Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 6.0,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShopCart()),
                    );
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 25,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 40.0,
            ),
            Center(
              child: Text(
                ' المتجر',
                style: TextStyle(
                  color: Color(0xffD91F26),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
