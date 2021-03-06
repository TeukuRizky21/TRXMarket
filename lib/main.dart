import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trx_market/ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TRX-Market',
      home: SignInPage(),
    );
  }
}
