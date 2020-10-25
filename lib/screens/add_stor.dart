import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_app/components/blue_button.dart';
import 'package:new_app/screens/chert_store.dart';
class AddStor extends StatefulWidget {
  @override
  _AddStorState createState() => _AddStorState();
}

class _AddStorState extends State<AddStor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2F2F2),
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Center(
          child: Text(
            'اضف متجرك علي كورير',
            style: TextStyle(
                color: Color(0xffD91F26),
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo'),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 8.0, left: 14.0, right: 14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          "اسم المتجر",
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                              color: Color(0xFF0C2444),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),

                        _textField("متجري"),

//
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          " وصف المتجر ",
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                              color: Color(0xFF0C2444),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),

                        _textField("سيارات"),

//
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          " عدد الخانات",
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                              color: Color(0xFF0C2444),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),

                        _textFieldIcon("12", Icons.keyboard_arrow_down),
//
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    _headText(),

//

                    _filedAndImg(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "   المقاس",
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                              color: Color(0xFF0C2444),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),

                        _textFieldIcon(
                            "XXL - XL _ L - M", Icons.keyboard_arrow_down),
//
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "    تغاصب المنتج",
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                              color: Color(0xFF0C2444),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),

                        _textField(""),
//
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "الالوان",
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                              color: Color(0xFF0C2444),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " السعر",
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                              color: Color(0xFF0C2444),
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$50",
                          maxLines: 2,
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    _bar(),
                    SizedBox(
                      height: 10.0,
                    ),

                    _filedAndImg(),
                    BlueButton(
                        txt: "انشئ",
                        onClick: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChartStore()),
                          );
                        }),
                  ],
                ),
              ),
              _barBottom(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _filedAndImg() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
//            Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context) => MyOrder()),
//              // PagesTestWidget()),
//            );
          },
          child: Container(
            margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF0C2444)),
                borderRadius: BorderRadius.all(
                  Radius.circular(14),
                ),
                color: Colors.white,
                image:
                    DecorationImage(image: AssetImage("assets/img/gift.png"))),
          ),
        ),

        _textFieldIcon("صورة المنتج", Icons.file_upload),
//
      ],
    );
  }

//   Widget _filedIconAndText() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: <Widget>[
//         Text(
//           "تاريخ الانطلاق",
//           maxLines: 2,
//           softWrap: true,
//           style: TextStyle(
//               color: Color(0xFF0C2444),
//               fontSize: 14.0,
//               fontWeight: FontWeight.bold),
//         ),

//         //_textFieldIcon(),
// //
//       ],
//     );
//   }

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

  Widget _headText() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 0, top: 8.0, bottom: 0),
      child: Row(
        children: <Widget>[
//
          Text(
            "  اضف منتجك :",
            maxLines: 2,
            softWrap: true,
            style: TextStyle(
                color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _textField(hitText) {
    return new Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new TextField(
          style: TextStyle(
              fontSize: 15.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
          decoration: InputDecoration(
            focusColor: Colors.transparent,
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            filled: true,
            fillColor: Color(0xFFE2E3E3),
            enabledBorder: new OutlineInputBorder(
              borderSide: new BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: hitText,
          ),
        ),
      ),
    );
  }

  Widget _textFieldIcon(String hitTxtIcon, IconData icon) {
    return new Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new TextField(
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
          decoration: InputDecoration(
            focusColor: Colors.transparent,
            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
            filled: true,
            fillColor: Color(0xFFE2E3E3),
//            icon: icon,
            enabledBorder: new OutlineInputBorder(
              borderSide: new BorderSide(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            prefixIcon: Icon(Icons.keyboard_arrow_down),

            hintText: hitTxtIcon,
          ),
        ),
      ),
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
