import 'package:cste_lab3/providers/cart_providers.dart';
import 'package:flutter/material.dart';
import 'package:cste_lab3/data.dart';
import 'package:provider/provider.dart';

class ItemTitle extends StatelessWidget {
  final Item item;
  const ItemTitle({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool canAddToCart = !Provider.of<CartProvider>(context).isItemAdded(item);

    return Card(
      elevation: 3,
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              item.image,
            ),
          ),
          Text(
            item.name,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            // ignore: unnecessary_string_interpolations
            '${item.price.toStringAsFixed(2)}',
            style: Theme.of(context).textTheme.caption,
          ),
          IconButton(
            onPressed: canAddToCart
              ? () {
                  Provider.of<CartProvider>(
                    context,
                    listen: false,
                  ).addItem(item);
                }
              : null,
            icon: const Icon(
              Icons.add_shopping_cart,
            ),
          ),
        ],
      ),
    );
  }
}
