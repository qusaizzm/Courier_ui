import 'package:flutter/material.dart';
import 'package:new_app/screens/car_services.dart';

class BookRideTwo extends StatefulWidget {
  @override
  _BookRideTwoState createState() => _BookRideTwoState();
}

class _BookRideTwoState extends State<BookRideTwo> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // ignore: todo
        //TODO 
        //your Map
        
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
                    _btn(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
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

  Widget _btn() {
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 8.0, bottom: 0),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return _bttomContianer();
            },
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
            'اضف نقطه النهايه',
            style: TextStyle(fontSize: 18, color: Colors.white),
          )),
        ),
      ),
    );
  }

  Widget _bttomContianer() {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Column(
//                    crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
//                            margin: EdgeInsets.all(60.0),
                          width: 140.0,
                          height: 140.0,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 60,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            color: const Color(0xFF8D8D8D),
                          ),
                        ),
                        Text(
                          'السائق في الطريق  !',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        _filed("اسم السائق :", "عمر عبدالقادر", Icons.person),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _bar(),
                        ),
                        _filed("السيارة :", "اكسنت مضلع", Icons.local_car_wash),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _bar(),
                        ),
                        _filed("", " \$50", Icons.monetization_on),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: _bar(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(color: Color(0xFFffffff)),
                        ),
                        child: new AlertDialog(
                          content: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF0C2444),
                               borderRadius: BorderRadius.circular(22.0),
                          border: Border.all(color: Color(0xFFffffff)),
                              // border: Border.all(color: Color(0xFFffffff)),
                            ),
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CarServices()),
                                          );
                                        },
                                        child: Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22.0),
                                            color: Color(0xffd09031),
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
                                      borderRadius: BorderRadius.circular(50.0),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
//                    onTap: () {
////                  showModalBottomSheet<void>(
////                    context: context,
////                    builder: (BuildContext context) {
////                      return _bttomContianer();
////                    },
////                  );
//                    },
                    child: Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Color(0xFF0C2444),
                      ),
                      child: Center(
                          child: Text(
                        'الغاء الرحلة',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ),
              _barBottom()
            ],
          ),
        ),
      ),
    );
  }

  Widget _filed(String title, String name, IconData icon) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 18.0, left: 18.0, top: 8.0, bottom: 2.0),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.red.shade600,
          ),
//
          SizedBox(
            width: 5.0,
          ),
          Text(
            title,
            maxLines: 2,
            softWrap: true,
            style: TextStyle(
                color: Color(0xFF0C2444),
                fontSize: 12.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            name,
            maxLines: 2,
            softWrap: true,
            style: TextStyle(
                color: Colors.black,
                fontSize: 12.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _bar() {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
          height: 2.0,
          // width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Color(0xFF0C2444),
          ),
        )
      ],
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
}
