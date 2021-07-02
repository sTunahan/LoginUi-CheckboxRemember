import 'package:flutter/material.dart';
import 'package:loginui/constants.dart';

class UserInformation extends StatelessWidget {
  String? informationTitle, inputHintText;
  IconData myicon;

  UserInformation(
      {required this.informationTitle,
      required this.myicon,
      required this.inputHintText});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$informationTitle",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 60,
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          child: TextField(
            obscureText:
                true, /////  Keyboard dan gırılen  sıfreyı yıldızlı göstermek ıcın.
            keyboardType: TextInputType
                .emailAddress, //telefondakı Keyboardı ozellestırmek ıcın
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder
                    .none, // keywordun altında cıkan cızgıyı kaybeder
                contentPadding: EdgeInsets.only(top: 15),
                prefixIcon: Icon(
                  myicon,
                  color: Colors.white,
                ),
                hintText: "$inputHintText",
                hintStyle: kHintTextStyle),
          ),
        ),
      ],
    );
  }
}
