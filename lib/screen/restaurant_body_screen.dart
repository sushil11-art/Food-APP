import 'package:flutter/material.dart';

class RestaurantScreenBody extends StatelessWidget {
  const RestaurantScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double appBarheight = AppBar().preferredSize.height;
    final double columnHeight =
        (MediaQuery.of(context).size.height - appBarheight);

    Widget buildSectionTitle(BuildContext context, String title) {
      return Container(
        margin: const EdgeInsets.only(left: 14, top: 10),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
        ),
      );
    }

    Widget buildContainer(child) {
      return Container(
        height: columnHeight * 0.45,
        width: double.infinity,
        child: child,
        decoration: const BoxDecoration(color: Colors.white),
        margin: EdgeInsets.only(top: 4),
        // padding: const EdgeInsets.all(14),
      );
    }

    return SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Container(
              padding: const EdgeInsets.all(8),
              height: columnHeight * 0.15,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.location_on, size: 25),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Location',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.delivery_dining_sharp,
                              size: 25,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Delivery Rs.XXX',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.star_border,
                              size: 25,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'X.X(XX Rating)',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            )
                          ],
                        ),
                      ]),
                  Container(
                    height: columnHeight * 0.10,
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/food.jpg"))),
                  )
                ],
              )
              // decoration: BoxDecoration(),
              ),
          buildSectionTitle(context, "Type"),
          buildContainer(ListView.builder(
              itemBuilder: (context, index) => Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          title: const Text('Food Name',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15)),
                          subtitle: const Text('Rs.XXX',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15)),
                          trailing: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.yellow),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))
                                  // shape:  MaterialStateProperty.all<Shape>(Colors.yellow),

                                  ),
                              // ElevatedButton.styleFrom(primary: Colors.yellow),
                              child: const Center(
                                child: Icon(Icons.add, color: Colors.black),
                              ),
                            ),
                          )
                          // trailing: InkWell(
                          //     onTap: () {},
                          //     child: Padding(
                          //       padding: const EdgeInsets.all(4),
                          //       child: Container(
                          //         width:
                          //             MediaQuery.of(context).size.width * 0.1,
                          //         height: columnHeight * 0.1,
                          //         decoration: BoxDecoration(
                          //             color: Colors.yellow,
                          //             borderRadius: BorderRadius.circular(10)),
                          //         child: Center(
                          //           child: Text(
                          //             'ADD',
                          //             style: TextStyle(
                          //                 fontWeight: FontWeight.bold),
                          //           ),
                          //         ),
                          //       ),
                          //     )
                          //     )
                          )
                    ],
                  )))

          // ListView.builder(itemBuilder: (context,builder){

          // })
        ]
            // mainAxisAlignment: MainAxisAlignment.start,
            ));
  }
}
