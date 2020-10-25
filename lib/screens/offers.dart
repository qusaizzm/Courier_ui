import 'package:flutter/material.dart';
import 'package:new_app/screens/profile.dart';
import 'package:new_app/screens/resturant.dart';
import 'package:new_app/widgets/bottombar.dart';

class OffersWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  OffersWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _OffersWidgetState createState() => _OffersWidgetState();
}

class _OffersWidgetState extends State<OffersWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomBar(
        ofActive: true,
        homeActive: false,
        proActive: false,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(
                      top: 40.0, left: 12.0, right: 12.0, bottom: 12.0),
                  padding: EdgeInsets.all(12.0),
                  child: _nameTextField()),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                   
                    _tab(
                      'سوبر ماركت',
                      Color(0xfff3e0c8),
                      Color(0xff0c2444),
                      false,
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Resturant()),
                        );
                      },
                    ), 
                    _tab( 'سوبر ماركت',
                      Color(0xfff3e0c8),
                      Color(0xff0c2444),
                      false,
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Resturant()),
                        );
                      },
                    ),
                    _tab(
                      'مطاعم',
                      Color(0xfff3e0c8),
                      Color(0xff0c2444),
                      false,
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProfileWidget()),
                        );
                      },
                    ),
                    _tab(
                      'سوبر ماركت',
                      Color(0xfff3e0c8),
                      Color(0xff0c2444),
                      false,
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Resturant()),
                        );
                      },
                    ),
                    _tab(
                      'عروض',
                      Color(0xffe2e3e3),
                      Color(0xffd91f26),
                      true,
                      () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      _services('اسبابؤي', '4.9', () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => BookRide()));
                      }, AssetImage("assets/img/loca.PNG")),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      _services('لا لا لا', '2.2', () {},
                          AssetImage("assets/img/loca.PNG")),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      _services('همهمهمه', '4.1', () {},
                          AssetImage("assets/img/loca.PNG")),
                    ],
                  ),
                ],
              ),
              // SidebarLayout(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _services(String title, String unit, onTap, AssetImage img) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  //padding: EdgeInsets.all(18.0),
                  margin: EdgeInsets.only(left: 18.0, right: 17.0),

                  height: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: img, fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(22.0),
                    color: const Color(0xffe2e3e3),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Color(0xffff9900),
                        ),
                        Text(
                          unit,
                          style: TextStyle(color: Color(0xffff9900)),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Center(
                    child: Text(
                      'اطلب الان',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
//                  width: 67.0,
//                  height: 33.0,
                  padding: EdgeInsets.only(left: 12.0, right: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xff0c2444),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }

  Widget _tab(String txt, Color back, Color txtcol, bool selected, onTap) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.only(left: 12.0, right: 12.0),
            margin: EdgeInsets.only(left: 12.0, right: 12.0),
            child: Image.asset(
              'assets/img/gift.png',
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Color(0xfffdfdfd),
              border: Border.all(width: 2.0, color: Color(0xff0c2444)),
            ),
          ),
        ),
        Text(
          txt,
          style: TextStyle(
              color: selected ? Color(0xFFd91f26) : Color(0xff0c2444),
              fontSize: 18.0),
        ),
      ],
    );
  }

  Widget _nameTextField() {
    return TextFormField(
      style: TextStyle(fontSize: 16.0, color: Color(0xFF8D8D8D)),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(color: Color(0xff0c2444)),
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
