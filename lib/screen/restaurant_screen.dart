import 'package:flutter/material.dart';
import 'package:food_app/screen/restaurant_body_screen.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.wallet_membership,
                color: Colors.white,
                size: 30,
              ))
        ],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30)),
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Restaurant Name',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      )),
                  const Expanded(
                      child: SizedBox(
                    width: 10,
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 30,
                      ))
                ]),
          ),
          preferredSize: const Size.fromHeight(40),
        ),
      ),
      body: RestaurantScreenBody(),
    );
  }
}
