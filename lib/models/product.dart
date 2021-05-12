import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {this.image,
      this.title,
      this.description,
      this.price,
      this.size,
      this.id,
      this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: "Dummy Text",
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: "Dummy Text",
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 1,
      description: "Dummy Text",
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: "Dummy Text",
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: "Dummy Text",
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 12,
      description: "Dummy Text",
      image: "assets/images/bag_6.png",
      color: Color(0xFFAEAEAE))
];

String dummyText =
    "asda sd a s d asd asd asda a sdadasd a ad ad a a sdadad a adad ada a asda adasd ada adasd a d awe a ae wrf s awe aw wea w ea aw deaw wa w aw w aw aw aw awewea awewaa awaw aw awe waa ffr awed tg kw h iwuahawiu hwuh iwuheiw iwu aw iieh awuh iuah awuh aalwueh auwe awuh iawuh awu waw eiauwhe aw ih aw uha lawu alba";