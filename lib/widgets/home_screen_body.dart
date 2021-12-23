import 'package:flutter/material.dart';
import 'package:food_app/screen/restaurant_list.dart';
import 'package:food_app/widgets/food_type_panel.dart';
import 'package:food_app/widgets/search_bar.dart';

// FoodTypePanel

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: const EdgeInsets.all(5.0),
            child: SearchBar(),
          ),
          const FoodTypePanel(),
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(10),
            child: const Text(
              'All Resturants',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
              // textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                  // shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  // separatorBuilder: (_, __) => const Divider(),
                  itemBuilder: (context, item) => RestaurantList()),
            ),
          ),
        ]);
  }
}
