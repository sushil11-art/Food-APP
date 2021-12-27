import 'package:flutter/material.dart';

class WalletBodyScreen extends StatelessWidget {
  const WalletBodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin:
                      EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/esewa.jpg"))),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Offer Balance',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  LinearProgressIndicator(
                    backgroundColor: Colors.grey,
                    minHeight: 10,
                    valueColor:
                        new AlwaysStoppedAnimation<Color>(Colors.orange),
                    value: 0.6,
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      '60/100',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.lock_clock,
                      ),
                      Text(
                        "Ordered Date| Time",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 10,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 30, right: 30, bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bonus Balance',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  LinearProgressIndicator(
                    backgroundColor: Colors.grey,
                    minHeight: 10,
                    valueColor:
                        new AlwaysStoppedAnimation<Color>(Colors.orange),
                    value: 0.8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      '80/100',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.lock_clock,
                      ),
                      Text(
                        "Ordered Date| Time",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 10,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 30, right: 30, bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Main Balance',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  LinearProgressIndicator(
                    backgroundColor: Colors.grey,
                    minHeight: 10,
                    valueColor:
                        new AlwaysStoppedAnimation<Color>(Colors.orange),
                    value: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      'Rs.500/Rs.500',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 10,
              thickness: 2,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(35, 10, 35, 10),
              // padding: EdgeInsets.top(),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.05,
              child: const Center(
                  child: Text('View Statement',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20))),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(color: Colors.orange),
                  borderRadius: BorderRadius.circular(12)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(35, 10, 35, 10),
              // padding: EdgeInsets.top(),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.05,
              child: const Center(
                  child: Text('Load Esewa Wallet',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20))),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(color: Colors.orange),
                  borderRadius: BorderRadius.circular(12)),
            )
          ],
        ),
      ),
    );
  }
}
