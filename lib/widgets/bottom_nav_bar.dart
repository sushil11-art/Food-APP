// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Colors.orange,
        elevation: 10,
        // fixedColor: Colors.yellow,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('images/activity.png'),
            title: Text(
              'Activity',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/payment.png'),
            title: Text('Payment', style: TextStyle(color: Colors.black)),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/notification.png'),
            title: Text('Notification', style: TextStyle(color: Colors.black)),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('images/profile.png'),
            title: Text('Profile', style: TextStyle(color: Colors.black)),
          ),
        ]);
  }
}
