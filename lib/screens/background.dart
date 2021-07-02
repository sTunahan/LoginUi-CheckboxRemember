import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  const BackGround({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment
              .topCenter, // gradıent ın baslangıc konumunu belırtmış olduk
          end: Alignment
              .bottomCenter, // gradıent ın bıtıs konumunu belırtmıs olduk.
          colors: [
            Color(0xFF73AEF5),
            Color(0xFF61A4F1),
            Color(0xFF478DE0),
            Color(0xFF398AE5)
          ],
          stops: [0.1, 0.4, .7, .9],
        ),
      ),
    );
  }
}
