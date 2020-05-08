import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Furniture {
  String imageUrl;
  String name;
  double price;
  // String colors;
  // MaterialColor cls;
  Furniture({
    @required this.imageUrl,
    // @required this.cls,
    @required this.name,
    @required this.price,
  });
}

List<Furniture> furniture = [
  Furniture(
      imageUrl: "images/pic1.png",
      name: "Balkarp Sleeper Purple",
      price: 399.90,
      // cls: Colors.purple[100]
      ),
  Furniture(
      imageUrl: "images/pic2.png",
      name: "Fresh Yellow Sofa",
      price: 499.90,
      // cls: Colors.yellow[200]
      ),
  Furniture(
      imageUrl: "images/pic3.png",
      name: "Balkarp Sleeper Purple",
      price: 599.90,
      // cls: Colors.purple[100]
      ),
];
