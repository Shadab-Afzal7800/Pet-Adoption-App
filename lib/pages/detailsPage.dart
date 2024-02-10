import 'package:flutter/material.dart';
import 'package:pet_shop_app/constants.dart';

import 'package:pet_shop_app/model/petsDetails.dart';

class PetsDetails extends StatefulWidget {
  final AdoptionList details;
  const PetsDetails({
    Key? key,
    required this.details,
  }) : super(key: key);

  @override
  State<PetsDetails> createState() => _PetsDetailsState();
}

class _PetsDetailsState extends State<PetsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: kParimaryColor,
        centerTitle: true,
      ),
    );
  }
}
