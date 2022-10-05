import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title;
  final String image;
  final Color color;
  Service({
    required this.id,
    required this.title,
    required this.image,
    required this.color,
  });
}

// Fake data of service model.

List<Service> services = [
  Service(
    id: 1,
    title: "       Mobile \nDevelopment",
    image: "assets/images/graphic.png",
    color: const Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "    Backend \nDevelopment",
    image: "assets/images/desktop.png",
    color: const Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "        Game \nDevelopment",
    image: "assets/images/ui.png",
    color: const Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "    General \nDevelopment",
    image: "assets/images/Interaction_design.png",
    color: const Color(0xFFFFE0E0),
  ),
];

List<Service> servicesTr = [
  Service(
    id: 1,
    title: "    Mobil \nGeliştirme",
    image: "assets/images/graphic.png",
    color: const Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "  Backend \nGeliştirme",
    image: "assets/images/desktop.png",
    color: const Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "     Oyun \nGeliştirme",
    image: "assets/images/ui.png",
    color: const Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "    Genel \nGeliştirme",
    image: "assets/images/Interaction_design.png",
    color: const Color(0xFFFFE0E0),
  ),
];
