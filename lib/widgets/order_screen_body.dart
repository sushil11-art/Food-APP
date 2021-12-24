import 'package:flutter/material.dart';
import 'package:food_app/widgets/cart_container.dart';
import 'package:food_app/widgets/delivery_container.dart';
import 'package:food_app/widgets/order_receipt_container.dart';

class OrderScreenBody extends StatelessWidget {
  const OrderScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            OrderDeliveryContainer(),
            OrderCartContainer(),
            OrderReceiptContainer()
          ],
        ),
      ),
    );
  }
}
