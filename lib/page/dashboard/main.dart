import 'package:ecanteen/page/foodscreen/list_food.dart';
import 'package:ecanteen/page/payment/payment.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecanteen/page/dashboard/home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 1;

  final screens = [
    PaymentPage(),
    HomePage(),
    ListFoodPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: fromCssColor('#4785EA'),
          buttonBackgroundColor: fromCssColor('#8DB8FE'),
          color: fromCssColor('#4785EA'),
          index: index,
          onTap: (index) => setState(() => this.index = index),
          items: [
            const Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            const Icon(
              Icons.qr_code,
              size: 30,
              color: Colors.white,
            ),
            const Icon(
              Icons.trolley,
              size: 30,
              color: Colors.white,
            ),
          ],
        ));
  }
}
