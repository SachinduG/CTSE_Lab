import 'package:cste_lab3/components/item_tile.dart';
import 'package:cste_lab3/screens/shop.dart';
import 'package:flutter/material.dart';
import 'package:cste_lab3/data.dart';

class Home extends StatelessWidget {
  static const String routeName = '/';
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("My Store")),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Shop.routeName);
            },
            icon: const Icon(
              Icons.shopping_cart,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: storeItems.length,
            itemBuilder: (context, index) {
              return ItemTitle(
                item: storeItems.elementAt(index),
              );
            }),
      ),
    );
  }
}
