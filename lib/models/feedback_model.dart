import 'package:flutter/material.dart';

class FeedBack {
  final int id;
  final String name;
  final String review;
  final String userPic;
  final Color color;
  FeedBack({
    required this.id,
    required this.name,
    required this.review,
    required this.userPic,
    required this.color,
  });
}

// Fake data of feedback model.

List<FeedBack> feedBacks = [
  FeedBack(
    id: 1,
    name: "Hayri Can Efe",
    review:
        "A skillful developer. He provides convenience to users with his unique development ways. He is a professional person who does his job with love.",
    userPic: "assets/images/ref1.jpg",
    color: const Color(0xFFFFF3DD),
  ),
  FeedBack(
    id: 2,
    name: "Sefa Zor",
    review: "",
    userPic: "assets/images/ref2.jpg",
    color: const Color(0xFFD9FFFC),
  ),
  FeedBack(
    id: 3,
    name: "İsmail Aslan",
    review:
        "He is a person who can easily adapt to teamwork and various projects. Thanks to his passion for his job, he is able to showcase his talents quite well. A good person, a talented developer.",
    userPic: "assets/images/ref3.jpg",
    color: const Color(0xFFFFE0E0),
  ),
];
