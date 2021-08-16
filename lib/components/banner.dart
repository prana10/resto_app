import 'package:flutter/material.dart';
import '../theme.dart';

class BannerCustom extends StatelessWidget {
  const BannerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: horizontalPadding,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/banner.png"),
        ),
      ),
      child: Container(
        padding: horizontalPadding,
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
                  "Disc s/d 50% untuk paket\ncombo",
                  style: headerText,
                ),
                Text(
                  "Yuk langsung order sekarang!",
                  style: subtitleText,
                ),
                // SizedBox(height: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
