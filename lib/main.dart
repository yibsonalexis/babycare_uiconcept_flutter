import 'package:baby_care_ui/pages/login_page.dart';
import 'package:baby_care_ui/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: Color(0xFF5f3814)),
      initialRoute: "login",
      routes: {
        '/': (context) => LoginPage(),
        'login': (context) => LoginPage(),
        'register': (context) => RegisterPage(),
      },
    );
  }
}
