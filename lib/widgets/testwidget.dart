//
// import 'package:flutter/material.dart';
//
// class TestWidget extends StatefulWidget {
//   @override
//   _TestWidgetState createState() => _TestWidgetState();
// }
//
// class _TestWidgetState extends State<TestWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             height: 70,
//             // padding: EdgeInsets.all(8.0),
//             decoration: BoxDecoration(
//               color: Color(0xFFE2E3E3),
//               borderRadius: BorderRadius.circular(50.0),
//             ),
//             child: new Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 SizedBox(
//                   width: 11,
//                 ),
//                 Expanded(
//                   flex: 5,
//                   child: CountryPickerDropdown(
//                     initialValue: 'sd',
//                     itemBuilder: _buildDropdownItem,
//                     onValuePicked: (Country country) {
//                       print("${country.name}");
//                     },
//                   ),
//                 ),
//                 Expanded(
//                   flex: 7,
//                   child: TextField(
//                     keyboardType: TextInputType.phone,
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: "رقم الهاتف",
//                     ),
//                     onChanged: (value) {
//                       // this.phoneNo=value;
//                       print(value);
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDropdownItem(Country country) => Container(
//         child: Row(
//             // mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//              CountryPickerUtils.getDefaultFlagImage(country),
//
//
//               // _nameTextField(),
//               SizedBox(
//                 width: 8.0,
//               ),
//               Text("+${country.phoneCode}"),
//             ],
//           ),
//       );
// }
