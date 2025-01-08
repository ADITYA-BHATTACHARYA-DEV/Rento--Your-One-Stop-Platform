import 'package:flutter/material.dart';

class Category{
  final String name;
  final String image;
  final Color color;
Category({required this.name, required this.image, required this.color});

}

List<Category> categories =[
  Category(name: "Sports",
  image: "assets/",
  color: const Color(0xffc2f6bf),
  ),
   
   Category(name: "Electronics",
  image: "assets/",
  color: const Color.fromARGB(137, 252, 47, 109),
  ),
   Category(name: "Sports",
  image: "assets/",
  color: const Color.fromARGB(255, 246, 242, 191),
  ),
  

];