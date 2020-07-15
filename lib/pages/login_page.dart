import 'package:baby_care_ui/utils/clipper_container_login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(),
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
                child: _buttonsSignUp(size, context),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buttonsSignUp(Size size, BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 120),
      height: size.height * 0.5,
      width: size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Sign Up",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.w500),
          ),
          _facebookButton(context),
          _emailButton(context),
          _twitterEvelopeButtons(context),
          Text(
            "If you already have account",
            style: TextStyle(color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            height: 25,
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              onPressed: () => Navigator.pushNamed(context, "register"),
              child: Text(
                "Login here",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row _twitterEvelopeButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.all(0),
            shape: CircleBorder(),
            onPressed: () {},
            child: Icon(
              FontAwesomeIcons.twitter,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 40,
          height: 40,
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.all(0),
            shape: CircleBorder(),
            onPressed: () {},
            child: Icon(
              FontAwesomeIcons.solidEnvelope,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }

  SizedBox _emailButton(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: OutlineButton(
        color: Theme.of(context).primaryColor,
        borderSide: BorderSide(width: 3, color: Theme.of(context).primaryColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        onPressed: () => Navigator.pushNamed(context, "register"),
        child: Text(
          "Use your Email or Phone",
          style: TextStyle(fontSize: 16, color: Theme.of(context).primaryColor),
        ),
      ),
    );
  }

  SizedBox _facebookButton(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        onPressed: () => Navigator.pushNamed(context, "register"),
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.facebook,
              color: Colors.white,
            ),
            Expanded(
              child: Text(
                "Sign Up with Facebook",
                style: TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
