import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resto_app/models/model_resto.dart';
import 'package:resto_app/screens/detail_page.dart';
import 'package:resto_app/theme.dart';

class AnotherResto extends StatelessWidget {
  const AnotherResto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rowText(),
        SizedBox(
          height: 10,
        ),
        ...List.generate(
          modelResto.length,
          (index) => AnotherRestaurantModel(
            modelAnotherResto: modelResto[index],
          ),
        ),
      ],
    );
  }

  Widget rowText() {
    return Row(
      children: [
        SizedBox(
          width: horizontalPaddingInt,
        ),
        Text(
          "Recommended for you",
          style: title,
        ),
      ],
    );
  }
}

class AnotherRestaurantModel extends StatelessWidget {
  const AnotherRestaurantModel({
    Key? key,
    required this.modelAnotherResto,
  }) : super(key: key);
  final ModelResto modelAnotherResto;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return DetailPage(model: modelAnotherResto);
            }
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(bottom: 15),
        width: MediaQuery.of(context).size.width / 1.1,
        height: 85,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9),
          // border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey[200]!.withOpacity(0.5),
            ),
          ],
        ),
        child: Center(
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      modelAnotherResto.image[1],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    modelAnotherResto.title,
                    style:
                        headerText.copyWith(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                    modelAnotherResto.location,
                    style: subtitleText.copyWith(
                        color: Colors.black, fontSize: 11),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star_border_outlined,
                        color: trendingColor2,
                        size: 23,
                      ),
                      SizedBox(width: 4),
                      Text(
                        modelAnotherResto.rating,
                        style: GoogleFonts.poppins(
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
