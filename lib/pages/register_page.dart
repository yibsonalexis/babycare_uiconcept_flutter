import 'package:baby_care_ui/utils/clipper_container_login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _valueCheck = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(),
            Image.asset(
              "assets/images/babycare2.jpg",
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
      height: size.height * 0.52,
      width: size.width,
      color: Colors.white,
      alignment: Alignment.center,
      child: Container(
        constraints: BoxConstraints(maxWidth: 350, minWidth: 100),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
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
            _textFieldEmail(context),
            _textFieldPassword(context),
            _textFieldConfirmPass(context),
            _checkboxListTileTems(context),
            _buttonSignUp(context),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }

  RaisedButton _buttonSignUp(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: () => Navigator.pushNamed(context, "register"),
      child: Text(
        "Sign Up",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  CheckboxListTile _checkboxListTileTems(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      value: _valueCheck,
      onChanged: (value) {
        _valueCheck = value;
        setState(() {});
      },
      activeColor: Theme.of(context).primaryColor,
      title: Text(
        "I accepted terms and conditions",
        style: TextStyle(fontSize: 14),
      ),
    );
  }

  TextField _textFieldConfirmPass(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).primaryColor,
        hintText: 'Confirm Password',
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: const EdgeInsets.all(18),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(50),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }

  TextField _textFieldPassword(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).primaryColor,
        hintText: 'Password',
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: const EdgeInsets.all(18),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(50),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }

  TextField _textFieldEmail(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Theme.of(context).primaryColor,
        hintText: 'Email',
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: const EdgeInsets.all(18),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(50),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
