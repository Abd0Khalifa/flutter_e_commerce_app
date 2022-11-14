import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/pages/details_screen.dart';
import 'package:flutter_e_commerce_app/provider/cart.dart';
import 'package:flutter_e_commerce_app/shared/colors.dart';
import 'package:provider/provider.dart';

import '../model/item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33),
            itemCount: itemes.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {},
                child: GridTile(
                  // ignore: sort_child_properties_last
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Details(product: itemes[index]),
                          ),
                        );
                      },
                      child: Image.asset(itemes[index].imgPath)),
                  footer: GridTileBar(
                    backgroundColor: const Color.fromARGB(66, 73, 127, 110),
                    trailing: Consumer<Cart>(builder: ((context, Cartt, child) {
                      return IconButton(
                          color: const Color.fromARGB(255, 62, 94, 70),
                          onPressed: () {
                            Cartt.add(itemes[index]);
                          },
                          icon: const Icon(Icons.add));
                    })),
                    leading:  Text("\$ ${itemes[index].price}"),
                    title: const Text(
                      "",
                    ),
                  ),
                ),
              );
            }),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/back.jpg"),
                        fit: BoxFit.cover),
                  ),
                  accountName: Text("Abdulrahman Khalifa",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                  accountEmail: Text("Abdo@gmail.com"),
                  currentAccountPictureSize: Size.square(90),
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("assets/images/me.jpeg")),
                ),
                ListTile(
                    title: const Text("Home"),
                    leading: const Icon(Icons.home),
                    onTap: () {}),
                ListTile(
                    title: const Text("My products"),
                    leading: const Icon(Icons.add_shopping_cart),
                    onTap: () {}),
                ListTile(
                    title: const Text("About"),
                    leading: const Icon(Icons.help_center),
                    onTap: () {}),
                ListTile(
                    title: const Text("Logout"),
                    leading: const Icon(Icons.exit_to_app),
                    onTap: () {}),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: const Text("Developed by Abdo Khalifa © 2022",
                  style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: const Text("Home"),
        actions: [
          Consumer<Cart>(builder: ((context, classInstancee, child) {
            return Row(
              children: [
                Stack(
                  children: [
                    Container(
                        // ignore: prefer_const_constructors, sort_child_properties_last
                        child: Text(
                          "${classInstancee.selectedProducts.length}",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add_shopping_cart)),
                  ],
                ),
                 Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    "\$ ${classInstancee.price}",
                  ),
                ),
              ],
            );
            
          })),
        ],
      ),
    );
  }
}
