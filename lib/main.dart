import 'package:ca_gabay/HomePage/home_page.dart';
import 'package:ca_gabay/LoginPage/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CaGabay());
}

class CaGabay extends StatelessWidget {
  const CaGabay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: HomePage(),
          ),
        );
      },
    );
  }
}