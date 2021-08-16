import 'package:flutter/material.dart';

class ModelResto {
  ModelResto({
    required this.id,
    required this.title,
    required this.location,
    required this.image,
    required this.rating,
  });
  final int id;
  final String title;
  final String location;
  final List<String> image;
  final String rating;
}

List<ModelResto> modelResto = [
  ModelResto(
    id: 1,
    title: "Hoka Hoka Bento",
    location: "grogol petamburan jakarta",
    image: [
      "assets/hokben1.png",
      "assets/beef_katsu.png",
      "assets/chiken_katsu_tare.png",
    ],
    rating: "4.3",
  ),
  ModelResto(
    id: 2,
    title: "Twelve Chinese Dining",
    location: "Jl.Dr Kusuma Atmaja No.75",
    image: [
      "assets/twelve01.png",
      "assets/twelve02.png",
      "assets/twelve03.png",
    ],
    rating: "4.7",
  ),
  ModelResto(
    id: 1,
    title: "Henshin Jakarta",
    location: "Jl.H.R Rasuna Said Kav",
    image: [
      "assets/henshin2.png",
      "assets/bar_menu.png",
      "assets/dinner_menu.png",
    ],
    rating: "4.6",
  ),
];