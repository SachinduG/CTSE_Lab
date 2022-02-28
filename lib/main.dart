import 'package:cste_lab3/providers/cart_providers.dart';
import 'package:cste_lab3/screens/home.dart';
import 'package:cste_lab3/screens/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'CTSE Lab 2',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        initialRoute: Home.routeName,
        routes: {
          Home.routeName: (context) => const Home(),
          Shop.routeName: (context) => const Shop(),
        },
      ),
    );
  }
}
