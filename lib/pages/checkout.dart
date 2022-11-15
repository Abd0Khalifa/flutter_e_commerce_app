import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/shared/appbar.dart';
import 'package:flutter_e_commerce_app/shared/colors.dart';
import 'package:provider/provider.dart';

import '../provider/cart.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final cartt = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: const Text("CheckOut Screen"),
        actions: const [ProductsAndPrice()],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: cartt.selectedProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        title: Text(cartt.selectedProducts[index].name),
                        subtitle: Text(
                            "${cartt.selectedProducts[index].price} - ${cartt.selectedProducts[index].location}"),
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage(cartt.selectedProducts[index].imgPath),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              cartt.delete(cartt.selectedProducts[index]);
                            },
                            icon: const Icon(Icons.remove)),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            // ignore: sort_child_properties_last
            child: Text(
              "Pay \$${cartt.price}",
              style: const TextStyle(fontSize: 19),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(BTNpink),
              padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
          ),
        ],
      ),
    );
  }
}
