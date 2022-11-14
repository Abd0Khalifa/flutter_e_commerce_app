class Item {
  String imgPath;
  double price;
  String location;

  Item({required this.imgPath, required this.price, this.location = "Main branch"});
}

final List<Item> itemes = [
  Item(imgPath: "assets/images/1.jpg", price: 10000, location: "Abdo shop"),
  Item(imgPath: "assets/images/2.jpg", price: 6000),
  Item(imgPath: "assets/images/3.jpg", price: 5000),
  Item(imgPath: "assets/images/4.jpg", price: 12000),
  Item(imgPath: "assets/images/5.jpg", price: 7000),
  Item(imgPath: "assets/images/6.jpg", price: 4000),
  Item(imgPath: "assets/images/7.jpg", price: 8000),
  Item(imgPath: "assets/images/8.jpg", price: 11000),
  Item(imgPath: "assets/images/9.jpg", price: 9000),
];
