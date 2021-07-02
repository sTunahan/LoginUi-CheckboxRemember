import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginui/forgot.dart';
import 'package:loginui/informationBoxs.dart';
import 'package:loginui/screens/background.dart';

class LoginSceen extends StatefulWidget {
  const LoginSceen({Key? key}) : super(key: key);

  @override
  _LoginSceenState createState() => _LoginSceenState();
}

class _LoginSceenState extends State<LoginSceen> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        //FocusScope Ekranın herhangi bir yerine basıldıgında klavyeyi kapatır.
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Stack(
          children: [
            ///////////////////////Background /////////////
            BackGround(),
            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
                child: Column(
                  children: [
                    Text(
                      "Sing In",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    UserInformation(
                        informationTitle: "Email",
                        myicon: Icons.email,
                        inputHintText: "Enter you Email"),
                    SizedBox(
                      height: 20,
                    ),
                    UserInformation(
                      informationTitle: "Password",
                      myicon: Icons.lock,
                      inputHintText: "Enter you Password",
                    ),
                    BuildForgotPassword(),
                    checkBoxRemember(),
                    loginButton(),
                    singin(),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        loginSelections("facebook"),
                        loginSelections("google"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector loginSelections(String mySelection) {
    return GestureDetector(
      onTap: () {
        print("$mySelection tıklandı");
      },
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            shape: BoxShape
                .circle, // yuvarlak şeklınde bır contaıner olusturmus olduk
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black54, offset: Offset(0, 2), blurRadius: 5),
            ],
            image: DecorationImage(
                //decoration  ıcınde ımage cagırmak ıcın bu sekılde kullanırız.
                image: AssetImage("assets/images/$mySelection.jpg"))),
      ),
    );
  }

  Container singin() {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Text(
            "-OR-",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w300, color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Sing in with",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  Container loginButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      margin: EdgeInsets.only(left: 30, right: 30),
      width: double.infinity,
      child: Expanded(
        child: RaisedButton(
          color: Colors.white,
          elevation: 10, // buttonun çevresine gölge verir
          onPressed: () {
            print("logın buttonu calıstı");
          },
          padding: EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "LOGIN",
            style: TextStyle(
                color: Color(0xFF478DE0),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Container checkBoxRemember() {
    return Container(
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
                activeColor: Colors.white,
                checkColor: Colors.blue,
                value: _rememberMe,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value!;
                  });
                }),
          ),
          Text(
            "Remember me",
            style: TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
