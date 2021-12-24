import 'package:flutter/material.dart';

class OrderDeliveryContainer extends StatelessWidget {
  const OrderDeliveryContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double appBarheight = AppBar().preferredSize.height;
    final double columnHeight =
        (MediaQuery.of(context).size.height - appBarheight);
    return Container(
        height: columnHeight * 0.30,
        // width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Deliver To',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                  Text(
                    'Edit Address >',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: (MediaQuery.of(context).size.height -
                      appBarheight -
                      columnHeight * 0.30) *
                  0.18,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.orange)),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Colors.orange,
                        ),
                        Flexible(
                            child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text(
                            "Current location",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Flexible(
                            child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text(
                            'Location Details',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                // width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text('Dine in',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      // width: 10,
                      padding: EdgeInsets.all(2),
                      child: const Center(
                        child: Text(
                          'NOW',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(3)),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(3)),
                      child: const Center(
                        child: Icon(
                          Icons.access_alarms,
                          color: Colors.orange,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        padding: const EdgeInsets.all(9.0),
        decoration: const BoxDecoration(color: Colors.white));
  }
}
