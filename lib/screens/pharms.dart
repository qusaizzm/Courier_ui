import 'package:flutter/material.dart';
import 'package:new_app/widgets/bottombar.dart';

class Pharms extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  Pharms({Key key, this.parentScaffoldKey}) : super(key: key);
  @override
  _PharmsState createState() => _PharmsState();
}

class _PharmsState extends State<Pharms> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        "assets/img/Pharmacy-Assistant.jpg",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
         bottomNavigationBar: BottomBar(
        ofActive: false,
        homeActive: false,
        proActive: false,
      ),
        backgroundColor: Colors.transparent,
        bottomSheet: _modalBottomSheetMenu(),
        body: Text('الصيدليات'),
       
      )
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
        height: 44.0 + MediaQuery.of(context).size.height / 1.8,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 18.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('12 صيدلية'),
                    Icon(Icons.menu),
                  ],
                ),
              ),
//              AssetImage("assets/img/op.jpg")
              createCartListItem(
                "صيدلية الدواء",
                AssetImage("assets/img/2.jpg"),
                () {
                   // ignore: todo
        //TODO   // your Navigator
                },
              ),
              createCartListItem(
                "صيدلية ريل",
                AssetImage("assets/img/2.jpg"),
                () {
                   // ignore: todo
        //TODO   // your Navigator
                },
              ),
              createCartListItem(
                "صيدلية الهلال",
                AssetImage("assets/img/2.jpg"),
                () {
                   // ignore: todo
        //TODO   // your Navigator
                },
              ),
              createCartListItem(
                "صيدلية المريخ",
                AssetImage("assets/img/2.jpg"),
                () {
                   // ignore: todo
        //TODO   // your Navigator
                },
              ),
              createCartListItem(
                "صيدلية الشباب",
                AssetImage("assets/img/2.jpg"),
                () {
                   // ignore: todo
        //TODO   // your Navigator
                },
              ),
              createCartListItem(
                "صيدلية الاخوان",
                AssetImage("assets/img/2.jpg"),
                () {
                   // ignore: todo
        //TODO   // your Navigator
                },
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

  createCartListItem(String name, AssetImage img, onTap) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            decoration: BoxDecoration(
                color: Color(0xffe2e3e3),
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    right: 12,
                  ),
                  // //padding: EdgeInsets.all(24.0),
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(
                        Radius.circular(14),
                      ),
                      color: Colors.white,
                      image: DecorationImage(image: img, fit: BoxFit.cover)),
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                name,
                                textAlign: TextAlign.left,
                                maxLines: 2,
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'اكتب الطلب',
                                style: TextStyle(color: Color(0xff767582)),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 3,
                                maxLength: 20,
                                style: TextStyle(
                                    fontSize: 22.0, color: Color(0xFF8D8D8D)),
                                decoration: InputDecoration(
                                    focusColor: Colors.transparent,

                                    //                                contentPadding: EdgeInsets.symmetric(

                                    //                                    vertical: 10.0, horizontal: 5.0),

                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: " الدواء",
                                    hintStyle: TextStyle(fontSize: 14)),
                              ),
                            ],
                          ),
                        ),

                        //                      Utils.getSizedBox(height: 6),
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
