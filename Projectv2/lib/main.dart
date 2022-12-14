import 'package:flutter/material.dart';
import 'Login.dart';
import 'History.dart';
import 'Home.dart';
import 'Cart.dart';
import 'Menu.dart';
import 'OrderDetails.dart';
import 'ShowOrders.dart';
import 'Profile.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      routes: {
        '/': (context) => Login(),
        '/0': (context) => Home(),
        '/1': (context) => History(),
        '/2': (context) => Menu(),
        '/3': (context) => Cart(),
        '/4': (context) => OrderDetails(),
        '/5': (context) => ShowOrders(),
        '/6': (context) => Profile(),

      },

      debugShowCheckedModeBanner: false,
      initialRoute: '/',



    );
  }
}