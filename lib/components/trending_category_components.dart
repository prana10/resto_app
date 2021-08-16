import 'package:flutter/material.dart';
import 'package:resto_app/models/trending_category.dart';
import 'package:resto_app/theme.dart';

class TrendingCategory extends StatelessWidget {
  const TrendingCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: horizontalPaddingInt,
            ),
            Text(
              "Trending Category",
              style: title,
            ),
            Spacer(),
            Text(
              "See All",
              style: seeAll,
            ),
            SizedBox(
              width: horizontalPaddingInt,
            ),
          ],
        ),
        SizedBox(height: 10),
        trendingCategoryContent(),
      ],
    );
  }

  Widget trendingCategoryContent() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 15),
          ...List.generate(
            ContenTrending.length,
            (index) => ContentTrending(
              trending: ContenTrending[index],
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}

class ContentTrending extends StatelessWidget {
  const ContentTrending({
    Key? key,
    required this.trending,
  }) : super(key: key);
  final ModelContentTrending trending;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: 80,
      height: 40,
      decoration: BoxDecoration(
        color: trending.bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          trending.text,
          style: subtitleText,
        ),
      ),
    );
  }
}
