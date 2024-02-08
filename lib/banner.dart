import 'package:flutter/material.dart';
import 'package:pet_shop_app/constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      decoration: BoxDecoration(
          color: kParimaryColor, borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Image.asset(
            'assets/images/all pets.png',
          ),
          Text(
            'Please ADOPT dont buy',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
