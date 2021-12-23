import 'package:flutter/material.dart';

class FoodTypeCard extends StatelessWidget {
  final String? Foodtitle;
  final String? FoodImage;
  // final Image? FoodImage;
  FoodTypeCard({required this.Foodtitle, required this.FoodImage});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          // width: 160.0,
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(FoodImage!))),
        ),
      ),
      Text(
        Foodtitle!,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
      ),
    ]);
  }
}
