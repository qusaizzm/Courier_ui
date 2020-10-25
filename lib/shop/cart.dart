import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_app/shop/Product.dart';

class ShopCart extends StatefulWidget {
  @override
  _ShopCartState createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> {
  var paddingLeft = 0.0;
  _buildCartProduct(int index) {
    List<String> imgList1 = products[index].imageUrl;

    return ListTile(
      leading: Container(
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
                      height: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(e),
                          fit: BoxFit.contain,
                        ),
                      )),
                ),
              );
            });
          }).toList(),
        ),
      ),
      title: Text(
        cart[index].name,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'x1',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        '\$${cart[index].price.toStringAsFixed(2)}',
        style: TextStyle(
          color: Color(0xffD91F26),
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            // Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 6.0,
            ),
            child: Icon(
              Icons.shopping_cart,
              size: 30,
            ),
          ),
        ),
        title: Text(
          ' المتجر (${cart.length})',
          style: TextStyle(
            color: Color(0xffD91F26),
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80.0,
        color: Color(0xFF0C2444),
        child: Center(
          child: Text(
            'المبلغ (\$336.39)',
            // textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFFF2F2F2),
      body: Padding(
        padding: EdgeInsets.all(01),
        child: ListView.separated(
          itemCount: cart.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildCartProduct(index);
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.grey[300],
            );
          },
        ),
      ),
    );
  }
}
