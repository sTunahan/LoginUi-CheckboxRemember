import 'package:flutter/material.dart';
import 'package:loginui/constants.dart';

class BuildForgotPassword extends StatelessWidget {
  const BuildForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        padding: EdgeInsets.only(right: 0.0),
        onPressed: () {
          print("Buttona basıldı");
        },
        child: Text(
          "Forgot Password",
          style: kHintTextStyle,
        ),
      ),
    );
  }
}
