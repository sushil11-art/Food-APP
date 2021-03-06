import 'package:flutter/material.dart';
import 'package:food_app/screen/order_screen.dart';
import 'package:food_app/screen/restaurant_screen.dart';
import 'package:get/get.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            margin: EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                hintText: 'Search foods or Resturant',
              ),
              //     // onChanged: (value) {
              //     //   // foodName = value;
              //     // },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: InkWell(
            onTap: () {
              Get.off(RestaurantScreen());
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Image(image: AssetImage('images/filter.png')),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                  )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: InkWell(
            onTap: () {
              Get.off(OrderScreen());
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Image(image: AssetImage('images/favriote.png')),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
