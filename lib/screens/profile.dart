import 'package:new_app/screens/resturant.dart';
import 'package:flutter/material.dart';
import 'package:new_app/widgets/bottombar.dart';

class ProfileWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  ProfileWidget({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        "assets/img/spectra.jpg",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
         bottomNavigationBar: BottomBar(
        ofActive: false,
        homeActive: false,
        proActive: true,
      ),
        backgroundColor: Colors.transparent,
        bottomSheet: _modalBottomSheetMenu(),
        body: Text("مطاعم"),
      ),
    ]);
  }

  Widget _modalBottomSheetMenu() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.0),
                topLeft: Radius.circular(15.0)),
            color: Colors.white),
        padding: EdgeInsets.only(left: 4.0, right: 4.0),
        //margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
        height: 44.0 + MediaQuery.of(context).size.height / 2,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('42 مطعم'),
                        Icon(Icons.menu),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        createCartListItem("ايطالي بتزا", '1.9',
                            AssetImage("assets/img/gift.png"), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Resturant()),
                          );
                        }),
                        createCartListItem("ايطالي  ", '3.9',
                            AssetImage("assets/img/Vector-27.png"), () {
                           // ignore: todo
        //TODO   // your Navigator
                        }),
                        createCartListItem(
                          "بتزا",
                          '2.9',
                          AssetImage("assets/img/Vector-28.png"),
                          () {
                             // ignore: todo
        //TODO   // your Navigator
                          },
                        ),
                        createCartListItem("ايطالي بتزا", '4.9',
                            AssetImage("assets/img/shoppingCart.png"), () {
                           // ignore: todo
        //TODO   // your Navigator
                        }),
                        createCartListItem("dfd بتزا", '2.9',
                            AssetImage("assets/img/gift.png"), () {
                           // ignore: todo
        //TODO   // your Navigator
                        }),
                        createCartListItem("ايطالي gfg", '4.0',
                            AssetImage("assets/img/gift.png"), () {
                           // ignore: todo
        //TODO   // your Navigator
                        }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

//  createCartList() {
//    return ListView.builder(
//      shrinkWrap: true,
//      primary: false,
//      itemBuilder: (context, position) {
//        return createCartListItem();
//      },
//      itemCount: 5,
//    );
//  }

  createCartListItem(String name, String unit, AssetImage img, onTap) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
              color: Color(0xffe2e3e3),
              borderRadius: BorderRadius.all(Radius.circular(18))),
          child: GestureDetector(
            onTap: onTap,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF0C2444)),
                      borderRadius: BorderRadius.all(
                        Radius.circular(14),
                      ),
                      color: Colors.white,
                      image: DecorationImage(image: img)),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 8, top: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                name,
                                maxLines: 2,
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "حجز طاولة",
                                style: TextStyle(
                                    color: Colors.red, fontSize: 16.0),
                              )
                            ],
                          ),
                        ),
//                      Utils.getSizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Color(0xffff9900),
                              ),
                              Text(
                                unit,
                                style: TextStyle(color: Color(0xffff9900)),
                              ),
                              SizedBox(
                                width: 40.0,
                              ),
                              Text(
                                'عدد الكراسي',
                                style: TextStyle(color: Color(0xff767582)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
//                            Text(
//                              "\$299.00",
////                              style: CustomTextStyle.textFormFieldBlack
////                                  .copyWith(color: Colors.green),
//                            ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xFF0C2444)),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(14),
                                    ),
                                    color: Color(0xffe9d7be),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.remove,
                                        size: 24,
                                        color: Color(0xFF0C2444),
                                      ),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 16.0),
                                      ),
                                      Icon(
                                        Icons.add,
                                        size: 24,
                                        color: Color(0xFF0C2444),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  flex: 100,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
