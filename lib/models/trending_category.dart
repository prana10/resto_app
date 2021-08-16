import 'package:flutter/material.dart';
import 'package:resto_app/theme.dart';


class ModelContentTrending {
  ModelContentTrending({
    required this.id,
    required this.text,
    required this.bgColor,
  });
  final int id;
  final String text;
  final Color bgColor;
}

List<ModelContentTrending> ContenTrending = [
  ModelContentTrending(
    id: 1,
    text: "Sehat",
    bgColor: trendingColor1,
  ),
  ModelContentTrending(
    id: 2,
    text: "Olahan",
    bgColor: trendingColor2,
  ),
  ModelContentTrending(
    id: 3,
    text: "Instant",
    bgColor: trendingColor3,
  ),
  ModelContentTrending(
    id: 4,
    text: "Sega",
    bgColor: trendingColor4,
  ),
  ModelContentTrending(
    id: 5,
    text: "Sega",
    bgColor: trendingColor5,
  ),
];