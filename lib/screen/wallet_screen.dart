import 'package:flutter/material.dart';
import 'package:food_app/screen/home_screen.dart';
import 'package:food_app/widgets/bottom_nav_bar.dart';
import 'package:food_app/widgets/wallet_body_screen.dart';
import 'package:get/get.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          onTap: () {
            Get.off(FoodHomeScreen());
          },
          child: Image(
            image: AssetImage("images/back.png"),
          ),
        ),
        bottom: PreferredSize(
          child: Padding(
            padding: EdgeInsets.all(9),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Wallet Screen',
                    style: TextStyle(fontSize: 30, color: Colors.white)),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(20),
        ),
      ),
      body: WalletBodyScreen(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
