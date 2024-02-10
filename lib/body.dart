import 'package:flutter/material.dart';
import 'package:pet_shop_app/banner.dart';

import 'package:pet_shop_app/model/petsDetails.dart';
import 'package:pet_shop_app/pages/detailsPage.dart';

import 'availableListContainers.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeBanner(size: size),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Available for adoption',
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          Expanded(
              child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8),
            itemCount: detailsList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PetsDetails(details: detailsList[index])));
                },
                child: AdoptionListContainer(details: detailsList[index]),
              );
            },
          ))
          // AdoptionListContainer(),
        ],
      ),
    );
  }
}
