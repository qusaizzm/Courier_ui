import 'package:flutter/material.dart';
import 'package:new_app/constants.dart';
import 'package:new_app/screens/add_driver.dart';
import 'package:new_app/screens/add_stor.dart';
import 'package:new_app/screens/add_stor_two.dart';
import 'package:new_app/screens/amzon.dart';
import 'package:new_app/screens/auto_chat.dart';
import 'package:new_app/screens/book_ride.dart';
import 'package:new_app/screens/book_ride_two.dart';
import 'package:new_app/screens/buy.dart';
import 'package:new_app/screens/call_driver.dart';
import 'package:new_app/screens/car_services.dart';
import 'package:new_app/screens/cart.dart';
import 'package:new_app/screens/chert_store.dart';
import 'package:new_app/screens/confirm_order.dart';
import 'package:new_app/screens/contect_us.dart';
import 'package:new_app/screens/delivery.dart';
import 'package:new_app/screens/dimant.dart';
import 'package:new_app/screens/edit.dart';
import 'package:new_app/screens/empty_cart.dart';
import 'package:new_app/screens/follow_order.dart';
import 'package:new_app/screens/history.dart';
import 'package:new_app/screens/home.dart';
import 'package:new_app/screens/login.dart';
import 'package:new_app/screens/login_ver.dart';
import 'package:new_app/screens/menu.dart';
import 'package:new_app/screens/my_orders.dart';
import 'package:new_app/screens/notifications.dart';
import 'package:new_app/screens/offers.dart';
import 'package:new_app/screens/pharms.dart';
import 'package:new_app/screens/point.dart';
import 'package:new_app/screens/product.dart';
import 'package:new_app/screens/profile.dart';
import 'package:new_app/screens/rest_password.dart';
import 'package:new_app/screens/resturant.dart';
import 'package:new_app/screens/signup.dart';
import 'package:new_app/screens/soon.dart';
import 'package:new_app/screens/store.dart';
import 'package:new_app/screens/store_gold.dart';
import 'package:new_app/screens/trevel.dart';
import 'package:new_app/screens/trevel_details.dart';
import 'package:new_app/screens/tst.dart';
import 'package:new_app/screens/wallet.dart';
import 'package:new_app/shop/Product.dart';
import 'package:new_app/shop/cart.dart';
import 'package:new_app/shop/shop_screen.dart';

class AllScreen extends StatefulWidget {
  @override
  _AllScreenState createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: blueColor,
      body: ListView(
        children: [
          buildListView(
            "Login",
            "1",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Login()));
            },
          ),
          buildListView(
            "signup",
            "2",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage()));
            },
          ),
          buildListView(
            "login_ver",
            "3",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginVer()));
            },
          ),
          buildListView(
            "rest_password",
            "4",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResetPass()));
            },
          ),
          buildListView(
            "home",
            "5",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeWidget()));
            },
          ),
          buildListView(
            "menu",
            "6",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Menu()));
            },
          ),
          buildListView(
            "wallet",
            "7",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Wallet()));
            },
          ),
          buildListView(
            "history",
            "8",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Histroy()));
            },
          ),
          buildListView(
            "point",
            "9",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Point()));
            },
          ),
          buildListView(
            "natifications",
            "10",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationsWidget()));
            },
          ),
          buildListView(
            "contect_us",
            "11",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContectUs()));
            },
          ),
          buildListView(
            "shop_screen",
            "12",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShopScreen()));
            },
          ),
          buildListView(
            "add_stor",
            "13",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddStor()));
            },
          ),
          buildListView(
            "add_stor_two",
            "14",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddStoreTwo()));
            },
          ),
          buildListView(
            "store",
            "15",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Store()));
            },
          ),
          buildListView(
            "store_gold",
            "16",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StoreGold()));
            },
          ),
          buildListView(
            "my_orders",
            "17",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyOrder()));
            },
          ),
          buildListView(
            "empty_cart",
            "18",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EmptyCart()));
            },
          ),
          buildListView(
            "follow_order",
            "19",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FollowOrder()));
            },
          ),
          buildListView(
            "chart_store",
            "20",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChartStore()));
            },
          ),
          buildListView(
            "cart",
            "21",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShopCart()));
            },
          ),
          buildListView(
            "confirm_order",
            "22",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ConfirmOrder()));
            },
          ),
          buildListView(
            "buy",
            "23",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Buy()));
            },
          ),
          buildListView(
            "cart - 2 ",
            "24",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Cart()));
            },
          ),
          buildListView(
            "amzon",
            "25",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Amzon()));
            },
          ),
          buildListView(
            "delivery",
            "26",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Delivery()));
            },
          ),
          buildListView(
            "soon",
            "27",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Soon()));
            },
          ),
          buildListView(
            "dimant",
            "28",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dimaant()));
            },
          ),
          buildListView(
            "profile",
            "29",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileWidget()));
            },
          ),
          buildListView(
            "product",
            "30",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductInfo()));
            },
          ),
          buildListView(
            "pharms",
            "31",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Pharms()));
            },
          ),
          buildListView(
            "offers",
            "32",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OffersWidget()));
            },
          ),
          buildListView(
            "trevel",
            "33",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Trevel()));
            },
          ),
          buildListView(
            "trevel_details",
            "34",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TrevelDetails()));
            },
          ),
          buildListView(
            "car_serives",
            "35",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CarServices()));
            },
          ),
           buildListView(
            "call_driver",
            "36",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CallDriver()));
            },
          ),
           buildListView(
            "add_driver",
            "37",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddDeriver()));
            },
          ),
           buildListView(
            "book_ride",
            "38",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BookRide()));
            },
          ),
           buildListView(
            "book_ride_two",
            "39",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BookRideTwo()));
            },
          ),
           buildListView(
            "auto_chat",
            "40",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AutoChat()));
            },
          ),
           buildListView(
            "edit",
            "41",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Edit()));
            },
          ),
           buildListView(
            "resturant",
            "42",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Resturant()));
            },
          ),
           buildListView(
            "tst",
            "43",
            () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TestWedget()));
            },
          ),
         
          
        ],
      ),
    );
  }

  Widget buildListView(String txt, String numb, press) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: blueColor,
        ),

        // margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(numb, style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
      focusColor: darkGeryColor,
      title: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        // margin: EdgeInsets.symmetric(horizontal: 20.0),
        color: blueColor,
        child: Center(
          child: Text(
            txt,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      onTap: press,
    );
  }
}
