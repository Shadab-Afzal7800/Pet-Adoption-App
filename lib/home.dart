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
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.pets)),
        ],
      ),
      drawer: Drawer(
        elevation: 2,
        child: ListView(children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: kParimaryColor),
            accountName: Text('Shadab Afzal'),
            accountEmail: Text('Shadabafzal7800@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/all pets.png'),
            ),
          ),
          ListTile(
            title: Text('Home'),
          )
        ]),
      ),
      body: Body(),
    );
  }
}
