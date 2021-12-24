import 'package:flutter/material.dart';

class OrderCartContainer extends StatelessWidget {
  const OrderCartContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double appBarheight = AppBar().preferredSize.height;
    final double columnHeight =
        (MediaQuery.of(context).size.height - appBarheight);
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: columnHeight * 0.40,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // margin: EdgeInsets.all(6),
          // padding: EdgeInsets.all(6),
          // width: double.maxFinite,
          Container(
            margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: const Text('Your Cart',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 20)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(height: 5),
                    // width: double.in
                    Flexible(
                      child: Container(
                        child: Row(
                          children: const [
                            Icon(Icons.restaurant_rounded, color: Colors.black),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Text('Restaurant name',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: (MediaQuery.of(context).size.height -
                              appBarheight -
                              columnHeight * 0.35) *
                          0.2,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/restaurant2.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Flexible(
                  child: Text('Item name',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20)),
                ),
                Flexible(
                  child: Text('Rs.XXXX',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20)),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Container(
                  // padding: EdgeInsets.all(2),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.09,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove, color: Colors.black))),
                ),
                Container(
                  // padding: EdgeInsets.all(2),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.09,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text('1',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                  ),
                ),
                Container(
                  // padding: EdgeInsets.all(2),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.09,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add, color: Colors.black))),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  child: const Text(
                    'each Rs.XXX',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin:
                const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
            padding:
                const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            decoration: BoxDecoration(color: Colors.grey),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.integration_instructions, color: Colors.orange),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Add Instruction",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
