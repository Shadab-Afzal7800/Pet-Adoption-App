import 'package:flutter/material.dart';
import 'package:pet_shop_app/constants.dart';
import 'package:pet_shop_app/model/petsDetails.dart';

class AdoptionListContainer extends StatelessWidget {
  final AdoptionList details;
  const AdoptionListContainer({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   height: 180,
        //   width: 160,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(20),
        //     color: kParimaryColor,
        //   ),
        //   child: Center(
        //     child: Image.asset(
        //       details.image,
        //       // fit: BoxFit.fill,
        //     ),
        //   ),
        // ),
        AspectRatio(
          aspectRatio: 1.0,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: kParimaryColor),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  details.image,
                  fit: BoxFit.scaleDown,
                )),
          ),
        ),
        Text(
          details.title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        Text(
          'Age: ' + details.age.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, color: kParimaryColor),
        )
      ],
    );
  }
}
