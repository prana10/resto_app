import 'package:flutter/material.dart';
import 'package:resto_app/models/model_resto.dart';
import 'package:resto_app/screens/detail_page.dart';
import 'package:resto_app/theme.dart';

class PopularResto extends StatelessWidget {
  const PopularResto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textRowPopular(),
        SizedBox(height: 13),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 15),
              ...List.generate(
                modelResto.length,
                (index) => PopularRestoContent(
                  modelPopularContent: modelResto[index],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget textRowPopular() {
    return Row(
      children: [
        SizedBox(width: horizontalPaddingInt),
        Text(
          "Popular",
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
    );
  }
}

class PopularRestoContent extends StatelessWidget {
  const PopularRestoContent({
    Key? key,
    required this.modelPopularContent,
  }) : super(key: key);
  final ModelResto modelPopularContent;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return DetailPage(model: modelPopularContent);
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 10),
        width: 300,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(modelPopularContent.image[0]),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(top: 23, left: 10),
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black.withOpacity(0.2),
          ),
          child: Row(
            children: [
              // SizedBox(width: 26),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 45),
                  Text(
                    modelPopularContent.title,
                    style: headerText,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.white, size: 15),
                      SizedBox(width: 4),
                      Text(
                        modelPopularContent.location,
                        style: subtitleText,
                      ),
                    ],
                  ),
                  // SizedBox(height: 16),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
