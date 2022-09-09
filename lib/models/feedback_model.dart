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
    name: "Ronald Thomson",
    review:
        "Such a nice website! Have you ever paid attention to the addresses that flash and flicker in the address bar at the top of the page on your computer screen? Not all URLs are legitimate.",
    userPic: "assets/images/people.png",
    color: const Color(0xFFFFF3DD),
  ),
  FeedBack(
    id: 2,
    name: "Walter White",
    review:
        "Say my name!  Have you ever paid attention to the addresses that flash and flicker in the address bar at the top of the page on your computer screen? Not all URLs are legitimate.",
    userPic: "assets/images/people.png",
    color: const Color(0xFFD9FFFC),
  ),
  FeedBack(
    id: 3,
    name: "Heisenberg Walker",
    review:
        "You da*n right.  Have you ever paid attention to the addresses that flash and flicker in the address bar at the top of the page on your computer screen? Not all URLs are legitimate.",
    userPic: "assets/images/people.png",
    color: const Color(0xFFFFE0E0),
  ),
];
