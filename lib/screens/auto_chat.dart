import 'package:flutter/material.dart';
import 'package:new_app/constants.dart';

class AutoChat extends StatefulWidget {
  @override
  _AutoChatState createState() => _AutoChatState();
}

class _AutoChatState extends State<AutoChat> {
  List<String> litems = [];
  List<String> litemsbot = [];
  final TextEditingController eCtrl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final String pro = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              //Implement logout functionality
            }),
        title: Text(' الرد  الالي'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(pro),
          new Expanded(
            child: new ListView.builder(
              itemCount: litems.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 8.0, top: 6.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(50.0)),
                      color: kPrimaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(
                            litems[index],
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
         // down << this code to resives mess form boot chat
          new Expanded(
            child: new ListView.builder(
              itemCount: litemsbot.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 8.0, top: 6.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(50.0)),
                      color: darkGeryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(
                            litemsbot[index],
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                new TextField(
                  controller: eCtrl,
                  // onSubmitted: (text){
                  //   litems.add(text);
                  //   eCtrl.clear();
                  //   setState(() {

                  //   });
                  // },
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xFF8D8D8D),
                  ),
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
                    hintText: ' اكتب هنا',
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 10,
                  child: GestureDetector(
                    onTap: () {
                      litems.add(eCtrl.text);
                      eCtrl.clear();
                      setState(() {});
                    },
                    child: Icon(Icons.send),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
