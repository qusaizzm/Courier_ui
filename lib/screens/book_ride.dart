import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_app/screens/call_driver.dart';

class BookRide extends StatefulWidget {
  @override
  _BookRideState createState() => _BookRideState();
}

class _BookRideState extends State<BookRide> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      // Image.asset(
      //   "assets/img/loca.PNG",
      //   height: MediaQuery.of(context).size.height,
      //   width: MediaQuery.of(context).size.width,
      //   fit: BoxFit.cover,
      // ),
       // ignore: todo
        //TODO 
        // your key
      Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffe2e3e3),
          elevation: 0.0,
          // actions: <Widget>[
          //   Icon(Icons.menu),
          // ],

          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'احجز مشوارك',
                style: TextStyle(color: Colors.red.shade600),
              ),
              SizedBox(
                width: 80.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.menu),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: _searchTextField(),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[
                  _tap(),
                  SizedBox(
                    height: 5.0,
                  ),
                  _tapCar(),
                  _btn(),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
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

//  decoration: BoxDecoration(
//                               borderRadius: BorderRadius.only(
//                                   bottomLeft: Radius.circular(22.0),
//                                   bottomRight: Radius.circular(22.0)),
//                               color: const Color(0xffe2e3e3),
//                             ),

  Widget _tap() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22.0), topRight: Radius.circular(22.0)),
        color: const Color(0xff7ea3b4),
      ),
      // color: Color(0xff7ea3b4),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 14.0, right: 15.0, top: 8.0, bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              children: <Widget>[Text("خيارك المفضل للمشاوير اليوميه")],
            ),
          ],
        ),
      ),
    );
  }

  Widget _tapCar() {
    return Container(
      // color: Color(0xff7ea3b4),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
               decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(22.0), bottomRight: Radius.circular(22.0)),
        color: const Color(0xff7ea3b4),
      ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 14.0, right: 15.0, top: 8.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.local_taxi),
                        Text(
                          'سياره سيدان',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff0c2444),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.local_shipping,
                          color: Colors.red,
                        ),
                        Text(
                          'سياره عائلية',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.directions_car),
                        Text(
                          'سياره اعمال',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff0c2444),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _btn() {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 8.0, bottom: 0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CallDriver()),
            // PagesTestWidget()),
          );
        },
        child: Container(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          //height: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color(0xFF0C2444),
          ),
          child: Center(
              child: Text(
            'استمر',
            style: TextStyle(fontSize: 18, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
