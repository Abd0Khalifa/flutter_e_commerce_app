import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/provider/cart.dart';
import 'package:provider/provider.dart';

import '../pages/checkout.dart';

class ProductsAndPrice extends StatelessWidget {
  const ProductsAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);

    return Row(
      children: [
        Stack(
          children: [
            Container(
                // ignore: prefer_const_constructors, sort_child_properties_last
                child: Text(
                  "${cartt.itemCount}",
                  style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(211, 164, 255, 193),
                    shape: BoxShape.circle)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckOut(),
                    ),
                  );
                },
                icon: const Icon(Icons.add_shopping_cart)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text(
            "\$ ${cartt.price}",
          ),
        ),
      ],
    );
  }
}
