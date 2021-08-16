import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resto_app/components/another_restaurant_component.dart';
import 'package:resto_app/components/banner.dart';
import 'package:resto_app/components/popular_resto_components.dart';
import 'package:resto_app/components/trending_category_components.dart';
import '../theme.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: customBottomBar(),
      floatingActionButton: customFloatingbutton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              appbarCustom(),
              BannerCustom(),
              SizedBox(height: 30),
              TrendingCategory(),
              SizedBox(height: 30),
              PopularResto(),
              SizedBox(height: 30),
              AnotherResto(),
            ],
          ),
        ),
      ),
    );
  }

  Widget customFloatingbutton() {
    return FloatingActionButton(
      backgroundColor: primaryColor,
      onPressed: () {},
      child: SvgPicture.asset("assets/Scan.svg"),
    );
  }

  Widget customBottomBar() => BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 7,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: primaryColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              columnBottomBar("assets/Home.svg", "Home"),
              columnBottomBar("assets/Discount.svg", "Promo"),
              SizedBox(width:5),
              columnBottomBar("assets/Buy.svg", "Finance"),
              columnBottomBar("assets/Profile.svg", "Profile"),
            ],
          ),
        ),
      );

  Widget columnBottomBar(String Images, title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Images),
        Text(title, style: subtitleText),
      ],
    );
  }

  Widget appbarCustom() {
    return Container(
      padding: horizontalPadding,
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset("assets/Category.svg"),
          SizedBox(width: MediaQuery.of(context).size.width / 4.6),
          Text(
            "Resto App",
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: semibold,
              color: primaryColor,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width / 4.7),
          SvgPicture.asset("assets/Notification.svg"),
        ],
      ),
    );
  }
}
