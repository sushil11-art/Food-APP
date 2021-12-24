import 'package:flutter/material.dart';
import 'package:food_app/screen/home_screen.dart';
import 'package:food_app/widgets/order_screen_body.dart';
import 'package:get/get.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Image(image: AssetImage('images/wallet.png')),
        ],
        leading: InkWell(
            onTap: () {
              Get.off(FoodHomeScreen());
            },
            child: Image(image: AssetImage('images/back.png'))),
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Order Confirm',
                    style: TextStyle(fontSize: 30, color: Colors.white)),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(20),
        ),
      ),
      body: OrderScreenBody(),
    );
  }
}
