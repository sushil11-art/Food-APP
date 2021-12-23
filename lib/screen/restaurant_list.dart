import 'package:flutter/material.dart';

class RestaurantList extends StatelessWidget {
  const RestaurantList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.14,
          width: MediaQuery.of(context).size.width * 0.25,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/restaurant1.jpg'))),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Restaurant Name',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.black,
                ),
                Text(
                  'X.X(X Ratings)',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w800),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Food Type',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            const Divider(
              thickness: 2,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(
                  Icons.delivery_dining,
                  color: Colors.black,
                ),
                Text(
                  'Delivery Rs.XXX',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Icon(
                  Icons.local_offer,
                  color: Colors.orange,
                ),
                Text(
                  'XX % Discount',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
