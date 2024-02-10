import 'package:flutter/material.dart';
import 'package:pet_shop_app/banner.dart';
import 'package:pet_shop_app/constants.dart';
import 'package:pet_shop_app/model/petsDetails.dart';

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
              return AdoptionListContainer(details: detailsList[index]);
            },
          ))
          // AdoptionListContainer(),
        ],
      ),
    );
  }
}

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
