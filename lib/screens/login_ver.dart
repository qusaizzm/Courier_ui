import 'package:flutter/material.dart';
import 'package:new_app/screens/home.dart';
import 'package:new_app/styleguide/text_styles.dart';

// ignore: must_be_immutable
class LoginVer extends StatefulWidget {
  String number ="0";

  // const LoginVer({Key key,@required this.number});
  @override
  _LoginVerState createState() => _LoginVerState();
}

class _LoginVerState extends State<LoginVer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "ادخل رمز التخقق المرسل اليك",
              style: moddemRedStyle,
            ),
            Text(
              "+966${widget.number}",
              style: normalBlueStyle,
            ),
            Row(
              children: [
                _textField(),
                _textField(),
                _textField(),
                _textField(),
                _textField(),
              ],
            ),
            CircleAvatar(
              child: Text('0'),
            ),
            _btn()
          ],
        ),
      ),
    );
  }

  Widget _textField() {
    return new Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(boxShadow: kElevationToShadow[2]),
          child: new TextField(
            keyboardType: TextInputType.phone,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15.0, color: Color(0xFF8D8D8D),),
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
            
            ),
          ),
        ),
      ),
    );
  }

  Widget _btn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeWidget()),
        );
      },
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Color(0xFF0C2444),
        ),
        child: Center(
            child: Text(
          'أرسل',
          style: TextStyle(fontSize: 18, color: Colors.white),
        )),
      ),
    );
  }
}
