import 'package:flutter/material.dart';
import 'package:food_app/screen/restaurant_screen.dart';
import 'package:food_app/widgets/bottom_nav_bar.dart';
import 'package:food_app/widgets/food_type_panel.dart';
import 'package:food_app/widgets/home_screen_body.dart';
import 'package:food_app/widgets/search_bar.dart';
import 'package:get/get.dart';

class FoodHomeScreen extends StatelessWidget {
  // var Get;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              actions: const [
                Image(image: AssetImage('images/wallet.png')),
              ],
              leading: const Image(image: AssetImage('images/back.png')),
              bottom: PreferredSize(
                  child: Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Food Delivery',
                            style:
                                TextStyle(fontSize: 30, color: Colors.white)),
                        Expanded(
                            child: SizedBox(
                          width: 10,
                        )),
                        InkWell(
                            onTap: () {
                              Get.off(RestaurantScreen());
                            },
                            child: Image(
                                image: AssetImage('images/bitbucket.png'))),
                      ],
                    ),
                  ),
                  preferredSize: Size.fromHeight(20)),
            ),
            bottomNavigationBar: const BottomNavBar(),
            body: HomeScreenBody()));
  }
}

class Resturant extends StatelessWidget {
  const Resturant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Image(
            image: AssetImage('images/rect.png'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Resturant Name'),
              Text('Rating'),
              Text('Food Type'),
              Divider(
                height: 10,
                thickness: 2,
                color: Colors.black,
              )
            ],
          )
        ],
      ),
    );
  }
}
