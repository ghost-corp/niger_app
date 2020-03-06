import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:niger_app/globals/colors.dart';
import 'package:niger_app/globals/screen_size.dart';
import 'widgets/menu_item.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double iconSize = kWidth(context) * 0.15;
    List<MenuData> menuItemsData = [
      MenuData(
          icon: Icons.history,
          iconSize: iconSize,
          text: "History",
          onTap: () {}),
      MenuData(
          icon: Icons.tram, iconSize: iconSize, text: "Tourism", onTap: () {}),
      MenuData(
          image: Image.asset(
            "assets/icons/groupX3.png",
            color: Colors.white,
          ),
          iconSize: iconSize,
          text: "People",
          useImageInPlaceOfIcon: true,
          onTap: () {}),
      MenuData(
          image: Image.asset(
            "assets/icons/cultureX3.png",
            color: Colors.white,
          ),
          iconSize: iconSize,
          text: "Culture",
          useImageInPlaceOfIcon: true,
          onTap: () {}),
      MenuData(
          image: Image.asset(
            "assets/icons/sportX3.png",
            color: Colors.white,
          ),
          iconSize: iconSize,
          text: "Sports",
          useImageInPlaceOfIcon: true,
          onTap: () {}),
      MenuData(
          image: Image.asset(
            "assets/icons/lgaX3.png",
            color: Colors.white,
          ),
          iconSize: iconSize,
          text: "LGA",
          useImageInPlaceOfIcon: true,
          onTap: () {}),
      MenuData(
          icon: Icons.directions_bus,
          iconSize: iconSize,
          text: "NSTA",
          onTap: () {}),
      MenuData(
          image: Image.asset(
            "assets/icons/emergencyX3.png",
            color: Colors.white,
          ),
          iconSize: iconSize,
          text: "Emergency",
          useImageInPlaceOfIcon: true,
          onTap: () {}),
      MenuData(
          icon: Icons.camera_alt,
          iconSize: iconSize,
          text: "Gallery",
          onTap: () {})
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: kWidth(context),
              height: 90,
              color: kAlternateColorDark300,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    style: TextStyle(height: 0.6),
                    decoration: InputDecoration(
                        hintText: "Search places",
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 15, right: 10),
                          child: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(width: 0, color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(width: 0, color: Colors.black))),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: double.infinity,
                        width: kWidth(context),
                        color: kAlternateColorDark10,
                      ),
                      ClipPath(
                        clipper: ContourClipper(ContourLayer.LAYER_THREE),
                        child: Container(
                          height: double.infinity,
                          width: kWidth(context),
                          color: kAlternateColorDark50,
                        ),
                      ),
                      ClipPath(
                        clipper: ContourClipper(ContourLayer.LAYER_TWO),
                        child: Container(
                          height: double.infinity,
                          width: kWidth(context),
                          color: kAlternateColorDark100,
                        ),
                      ),
                      ClipPath(
                        clipper: ContourClipper(ContourLayer.LAYER_ONE),
                        child: Container(
                          height: double.infinity,
                          width: kWidth(context),
                          color: kAlternateColorDark200,
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: double.infinity,
                    width: kWidth(context),
                    child: GridView.builder(
                        itemCount: menuItemsData.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: 0.9),
                        itemBuilder: (context, index) {
                          return Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: MenuItem(
                                menuData: menuItemsData[index],
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: kHeight(context)*0.28,
              padding: EdgeInsets.zero,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: kWidth(context),
                    height: kHeight(context)*0.28,
                    child: Image.asset(
                      "assets/images/gurara.jpg",
                      fit: BoxFit.cover,
                      colorBlendMode: BlendMode.darken,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                      top: kHeight(context)*0.1,
                      left: 5
                    ),
                    child: Center(
                      child: Text(
                          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed"
                          " diam nonumy eirmod tempor invidunt ut labore et dolore.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),
            ),

            ListTile(
              leading: Icon(
                Icons.home,
                size: 24,
                color: kPrimaryColor,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.history,
                size: 24,
                color: kPrimaryColor,
              ),
              title: Text(
                "History",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.tram,
                size: 24,
                color: kPrimaryColor,
              ),
              title: Text(
                "Tourism",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
            ),
            ListTile(
              leading: Container(
                height: 20,
                child: Image.asset(
                  "assets/icons/groupX3.png",
                  color: kPrimaryColor,
                ),
              ),
              title: Text(
                "People",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
            ),
            ListTile(
              leading: Container(
                height: 20,
                child: Image.asset(
                  "assets/icons/cultureX3.png",
                  color: kPrimaryColor,
                ),
              ),
              title: Text(
                "Culture",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.map,
                size: 24,
                color: kPrimaryColor,
              ),
              title: Text(
                "Map",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
            ),
            ListTile(
              leading: Container(
                height: 20,
                child: Image.asset(
                  "assets/icons/emergencyX3.png",
                  color: kPrimaryColor,
                ),
              ),
              title: Text(
                "Emergency",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.camera_alt,
                size: 24,
                color: kPrimaryColor,
              ),
              title: Text(
                "Gallery",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
            )
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomAppBar(),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      leading: Padding(
        padding: EdgeInsets.only(top: 30),
        child: GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Icon(
            Icons.menu,
            size: 30,
          ),
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 35),
        child: Text("Lorem ipsum", style: TextStyle(fontSize: 25)),
      ),
      centerTitle: true,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 30, right: 10, left: 10),
          child: Icon(
            Icons.supervisor_account,
            size: 30,
          ),
        )
      ],
    );
  }
}

enum ContourLayer { LAYER_ONE, LAYER_TWO, LAYER_THREE }

class ContourClipper extends CustomClipper<Path> {
  ContourLayer layer;
  ContourClipper(this.layer);
  @override
  Path getClip(Size size) {
    final path = Path();
    if (layer == ContourLayer.LAYER_ONE) {
      path.moveTo(0, 0);
      path.lineTo(0, size.height * 0.6);
      path.cubicTo(size.width * 0.3, size.height * 0.8, size.width * 0.5,
          size.height * 0.4, size.width, size.height * 0.7);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);
    }
    if (layer == ContourLayer.LAYER_TWO) {
      path.moveTo(0, 0);
      path.lineTo(0, size.height * 0.7);
      path.cubicTo(size.width * 0.3, size.height * 0.85, size.width * 0.5,
          size.height * 0.5, size.width, size.height * 0.9);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);
    }

    if (layer == ContourLayer.LAYER_THREE) {
      path.moveTo(0, 0);
      path.lineTo(0, size.height * 0.8);
      path.cubicTo(size.width * 0.3, size.height, size.width * 0.5,
          size.height * 0.6, size.width, size.height);
      path.lineTo(size.width, 0);
      path.lineTo(0, 0);
    }
    return path;
  }

  @override
  bool shouldReclip(ContourClipper oldClipper) => true;
}
