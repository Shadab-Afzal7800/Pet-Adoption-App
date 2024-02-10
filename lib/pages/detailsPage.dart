import 'package:flutter/material.dart';

import 'package:pet_shop_app/constants.dart';

import 'package:pet_shop_app/model/petsDetails.dart';

class PetsDetails extends StatefulWidget {
  final AdoptionList details;
  final String imagePath, about, heading;
  final int age;
  const PetsDetails(
      {Key? key,
      required this.details,
      required this.imagePath,
      required this.about,
      required this.heading,
      required this.age})
      : super(key: key);

  @override
  State<PetsDetails> createState() => _PetsDetailsState();
}

class _PetsDetailsState extends State<PetsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kParimaryColor,
        appBar: AppBar(
          backgroundColor: kParimaryColor,
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(color: kParimaryColor),
                child: Image.asset(widget.imagePath),
                alignment: Alignment.center,
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: kbgColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.heading,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: kParimaryColor),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            'AGE: ' + widget.age.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: kParimaryColor),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                              'Description: ' + widget.about,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
