import 'package:flutter/material.dart';

class OrderReceiptContainer extends StatelessWidget {
  const OrderReceiptContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double appBarheight = AppBar().preferredSize.height;
    final double columnHeight =
        (MediaQuery.of(context).size.height - appBarheight);
    return Container(
        // height: columnHeight * 30,
        margin: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(color: Colors.white),
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Receipt',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 20)),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Subtotal(Including VAT,SD)",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        )),
                    Text("RS.XXXX",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Delivery Charge ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        )),
                    Text("RS.XXXX",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
              ),
              const Divider(
                height: 10,
                thickness: 2,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text("Total",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 20)),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          // width: 10,
                          padding: EdgeInsets.all(2),
                          child: const Center(
                            child: Text(
                              'Details',
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.orange),
                              borderRadius: BorderRadius.circular(3)),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text('Rs.XXXX',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    )
                  ],
                ),
              ),
              const Divider(
                height: 10,
                thickness: 2,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, bottom: 8, right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Add to Bucket',
                      style: TextStyle(color: Colors.orange),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: const Center(
                          child: Text('Place Order',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20))),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          border: Border.all(color: Colors.orange),
                          borderRadius: BorderRadius.circular(8)),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
