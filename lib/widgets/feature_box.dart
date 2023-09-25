import 'package:flutter/material.dart';
import 'package:voicemate/widgets/pallet.dart';

class FeatureBox extends StatelessWidget {
  final Color color;
  final String headertext;
  final String descriptiontext;

  const FeatureBox({super.key, required this.color, required this.headertext, required this.descriptiontext});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 10,
      ),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10).copyWith(left: 10),
        child: Column(
          children: [
            Text(
              headertext,
              style: const TextStyle(
                  fontFamily: "Cera pro",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Pallete.blackColor),
            ),
              Text(
              descriptiontext,
              style: const TextStyle(
                  fontFamily: "Cera pro",
               
                  color: Pallete.blackColor),
            ),
          ],
        ),
      ),
    );
  }
}
