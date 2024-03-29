import 'package:flutter/material.dart';
import 'package:pet_shop_app/constants.dart';
import 'package:pet_shop_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: kParimaryColor,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
          )),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
