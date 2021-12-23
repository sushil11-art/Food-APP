import 'package:flutter/material.dart';
import 'package:food_app/widgets/food_type_card.dart';

// import 'foodTypeCard.dart';

class FoodTypePanel extends StatelessWidget {
  const FoodTypePanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: MediaQuery.of(context).size.height * 0.25,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            FoodTypeCard(Foodtitle: 'Asian', FoodImage: 'images/asian.jpg'),
            FoodTypeCard(Foodtitle: 'Indian', FoodImage: 'images/food.jpg'),
            FoodTypeCard(Foodtitle: 'Halal', FoodImage: "images/halal.png"),
            FoodTypeCard(Foodtitle: 'Pocke', FoodImage: "images/pocke.png"),
          ],
        ));
  }
}
