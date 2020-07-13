import 'package:baby_care_ui/utils/clipper_container_login.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
                // color: Colors.red,
                ),
            Image.asset(
              "assets/images/babycare1.jpeg",
              fit: BoxFit.cover,
              height: size.height * 0.65,
              width: size.width,
            ),
            Positioned(
              bottom: 0,
              child: ClipPath(
                clipper: LoginCustomClipper(),
                child: Container(
                  height: size.height * 0.5,
                  width: size.width,
                  color: Colors.white,
                  child: Text("data"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
