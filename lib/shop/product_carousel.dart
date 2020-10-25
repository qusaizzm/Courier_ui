import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_app/screens/dimant.dart';
import 'package:new_app/shop/Product.dart';

class ProductCarousel extends StatelessWidget {
  final String title;
  final List<Product> products;
  final Function press;

  ProductCarousel({this.title, this.products, this.press});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 240.0,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              List<String> imgList1 = products[index].imageUrl;

              return // _buildProductCard(index);  List<String> imgList1 = products[index].imageUrl;

                  Container(
                margin: EdgeInsets.all(10.0),
                // padding: EdgeInsets.all(10.0),
                width: 150.0,
                // height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dimaant(),
                            settings: RouteSettings(
                              arguments: products[index].imageUrl,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        child: CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: true,
                            scrollDirection: Axis.vertical,
                            enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                            autoPlayInterval: Duration(seconds: 2),
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 500),
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
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      products[index].name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '\$${products[index].price.toStringAsFixed(2)}',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4.0),
                            FlatButton(
                              padding: EdgeInsets.all(4.0),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Dimaant(),
                                    settings: RouteSettings(
                                      arguments: products[index].imageUrl,
                                    ),
                                  ),
                                );
                              },
                              color: Colors.blueAccent,
                              textColor: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'إضافه',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(width: 4.0),
                                  Icon(Icons.shopping_cart)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
