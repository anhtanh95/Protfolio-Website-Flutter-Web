import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service({required this.id, required this.title, required this.image, required this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Android Develop\nJava/Kotlin",
    //image: "assets/images/graphic.png",
    image: "assets/images/Kotlin.jpg",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Cross-platform Develop\nFlutter",
    //image: "assets/images/desktop.png",
    image: "assets/images/Flutter.png",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "Game Develop\nUnity",
    //image: "assets/images/ui.png",
    image: "assets/images/Unity.png",
    color: Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "Reverse Engineering",
    //image: "assets/images/Intreaction_design.png",
    image: "assets/images/RE2.png",
    color: Color(0xFFFFE0E0),
  ),
];
