import 'package:flutter/material.dart';
import 'package:pet_shop_app/body.dart';
import 'package:pet_shop_app/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Pet Adoption',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundColor: kParimaryColor,
          )
        ],
      ),
      drawer: Drawer(),
      body: Body(),
    );
  }
}
