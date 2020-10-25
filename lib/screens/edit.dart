import 'package:flutter/material.dart';

class Edit extends StatelessWidget {
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
          title: Text(
            'قصي عبدالحفيظ',
            style: TextStyle(
                color: Color(0xffD91F26),
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo'),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.person), onPressed: () => {})
          ]),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  //key: _formKey,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _oldPassTextField(),

                      SizedBox(
                        height: 20.0,
                      ),
                      _newPassTextField(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _conformPassTextField(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _numberTextField(),
                      SizedBox(
                        height: 20.0,
                      ),
                      _btn(),
                      SizedBox(
                        height: 15.0,
                      ),

                      //_btn(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _oldPassTextField() {
    return TextFormField(
      style: TextStyle(
          fontSize: 18.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(88.0),
        ),
        hintText: 'كلمة السر القديمة ',
        prefixIcon: Icon(Icons.person, color: Color(0xFFA0C2444)),
      ),
      validator: (String value) {
        if (value.length < 8) {
          return 'Password must be at least 8 characters long.';
        }
        return null;
      },
    );
  }

  Widget _newPassTextField() {
    return TextFormField(
      style: TextStyle(
          fontSize: 18.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(88.0),
        ),
        hintText: 'كلمة السر الجديده',
        prefixIcon: Icon(Icons.lock, color: Color(0xFFA0C2444)),
      ),
      validator: (String value) {
        if (value.length < 8) {
          return 'Password must be at least 8 characters long.';
        }
        return null;
      },
    );
  }

  Widget _conformPassTextField() {
    return TextFormField(
      style: TextStyle(
          fontSize: 18.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(88.0),
        ),
        hintText: 'تاكيد كلمة السر',
        prefixIcon: Icon(Icons.lock, color: Color(0xFFA0C2444)),
      ),
      validator: (String value) {
        if (value.length < 8) {
          return 'Password must be at least 8 characters long.';
        }
        return null;
      },
    );
  }

  Widget _numberTextField() {
    return TextFormField(
      style: TextStyle(
          fontSize: 18.0, color: Color(0xFF8D8D8D), fontFamily: 'Cairo'),
      decoration: InputDecoration(
        focusColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
        filled: true,
        fillColor: Color(0xFFE2E3E3),
        border: new OutlineInputBorder(
          borderSide: new BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(88.0),
        ),
        hintText: 'رقم الهاتف',
        prefixIcon: Icon(Icons.phone, color: Color(0xFFA0C2444)),
      ),
      validator: (String value) {
        if (value.length < 8) {
          return 'Password must be at least 8 characters long.';
        }
        return null;
      },
    );
  }

  Widget _btn() {
    return GestureDetector(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => ProfileWidget()),
      //   );
      // },
      child: Container(
        height: 60.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Color(0xFF0C2444),
        ),
        child: Center(
            child: Text(
          'حفظ التغبر',
          style:
              TextStyle(fontSize: 18, color: Colors.white, fontFamily: 'Cairo'),
        )),
      ),
    );
  }
}
