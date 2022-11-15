import 'package:flutter/material.dart';
import 'package:flutter_e_commerce_app/model/item.dart';

import '../shared/appbar.dart';
import '../shared/colors.dart';

class Details extends StatefulWidget {
  Item product;
  Details({required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // const Details({super.key});
  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: const Text("Details Screen"),
        actions: const [ProductsAndPrice()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.product.imgPath),
            const SizedBox(
              height: 11,
            ),
            Text(
              "\$ ${widget.product.price}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  // ignore: prefer_const_constructors, sort_child_properties_last
                  child: Text(
                    "New",
                    style: const TextStyle(fontSize: 15),
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 129, 129),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    const Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    const Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    const Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    const Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 66,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.edit_location,
                      size: 26,
                      color: Color.fromARGB(168, 3, 65, 27),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      widget.product.location,
                      style: const TextStyle(fontSize: 19),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                "Details : ",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "A car or automobile is a motor vehicle with wheels. Most definitions of cars say that they run primarily on roads, seat one to eight people, have four wheels, and mainly transport people instead of goods.[1][2]The year 1886 is regarded as the birth year of the car, when German inventor Carl Benz patented his Benz Patent-Motorwagen.[3][4][5] Cars became widely available during the 20th century. One of the first cars affordable by the masses was the 1908 Model T, an American car manufactured by the Ford Motor Company. Cars were rapidly adopted in the US, where they replaced animal-drawn carriages and carts.[citation needed] In Europe and other parts of the world, demand for automobiles did not increase until after World War II.[6] The car is considered an essential part of the developed economy.Cars have controls for driving, parking, passenger comfort, and a variety of lights. Over the decades, additional features and controls have been added to vehicles, making them progressively more complex. These include rear-reversing cameras, air conditioning, navigation systems, and in-car entertainment. Most cars in use in the early 2020s are propelled by an internal combustion engine, fuelled by the combustion of fossil fuels. Electric cars, which were invented early in the history of the car, became commercially available in the 2000s and are predicted to cost less to buy than gasoline cars before 2025.[7][8] The transition from fossil fuels to electric cars features prominently in most climate change mitigation scenarios,[9] such as Project Drawdown's 100 actionable solutions for climate change.[10]",
              style: const TextStyle(
                fontSize: 18,
              ),
              maxLines: isShow ? 6 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isShow = !isShow;
                });
              },
              child: Text(
                isShow ? "Show More" : "Show Less",
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
