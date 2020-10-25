import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:new_app/screens/auto_chat.dart';
// import 'package:new_app/screens/book_ride_two.dart';
import 'package:new_app/screens/car_services.dart';
import 'package:url_launcher/url_launcher.dart';

class CallDriver extends StatefulWidget {
  @override
  _CallDriverState createState() => _CallDriverState();
}

class _CallDriverState extends State<CallDriver> {
  double prics = 0.00;
  double time = 30;
  double mal = 0.00;
  String driverName = "khaled kmoh";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Image.asset(
        //   "assets/img/loca.PNG",
        //   height: MediaQuery.of(context).size.height,
        //   width: MediaQuery.of(context).size.width,
        //   fit: BoxFit.cover,
        // ),
        // ignore: todo
        //TODO 
        // your key
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  color: Colors.transparent,
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        size: 35,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                        ),
                        child: Text("$prics ريال"),
                      ),
                      CircleAvatar(
                        radius: 30.0,
                        child: Icon(
                          Icons.person,
                          color: Colors.grey,
                          size: 40,
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(10.0),
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("ميل $mal "),
                          SizedBox(
                            width: 10.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.white,
                              boxShadow: kElevationToShadow[9],
                            ),
                            height: 50.0,
                            width: 50.0,
                            child: Icon(
                              Icons.person,
                              color: Colors.grey,
                              size: 40,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(" $time دقيقه "),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: Text(
                          "$driverName",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      buildlocation(Colors.green, "حي ابو زيد"),
                      buildlocation(Colors.yellow, "حي ابو احمد"),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.0),
                                      border:
                                          Border.all(color: Color(0xFFffffff)),
                                    ),
                                    child: new AlertDialog(
                                      content: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF0C2444),
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                          border: Border.all(
                                              color: Color(0xFFffffff)),
                                          // border: Border.all(color: Color(0xFFffffff)),
                                        ),
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: <Widget>[
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  CarServices()));
                                                    },
                                                    child: Container(
                                                      height: 20,
                                                      width: 20,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.0),
                                                        color:
                                                            Color(0xffd09031),
                                                      ),
                                                      child: new Icon(
                                                        Icons.close,
                                                        color: Colors.black,
                                                        size: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                height: 70,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                  color: Color(0xffffffff),
                                                ),
                                                child: new Icon(
                                                  Icons.no_encryption,
                                                  color: Colors.black,
                                                  size: 50,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                child: Text(
                                                  "لقد الغيت الرحلة",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Color(0xffd09031)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      elevation: 0.0,
                                      backgroundColor: Color(0xFFF),
                                    ),
                                  ));
                            },
                            child: Center(
                              child: buildDriverD(
                                "إلغاء",
                                Icons.close,
                                Colors.red,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                               launch("tel://6657656757567");
                            },
                            child: buildDriverD(
                              "اتصال",
                              Icons.call,
                              Colors.green,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AutoChat(),
                                  settings:
                                      RouteSettings(arguments: driverName),
                                ),
                              );
                            },
                            child: buildDriverD(
                              "رساله",
                              Icons.chat,
                              Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      _btn()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDriverD(String txt, IconData icon, Color colour) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: colour,
          ),
          Text(
            txt,
            style: TextStyle(color: colour),
          )
        ],
      ),
    );
  }

  Widget buildlocation(Color colour, String loca) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: colour,
          ),
          child: Text(""),
        ),
        SizedBox(
          width: 10,
        ),
        Text(loca)
      ],
    );
  }

  Widget _btn() {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => BookRideTwo(),)
        // );
      },
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Color(0xFF0C2444),
        ),
        child: Center(
            child: Text(
          'قبول الطلب',
          style: TextStyle(fontSize: 18, color: Colors.white),
        )),
      ),
    );
  }
}
