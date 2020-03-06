import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final MenuData menuData;
  MenuItem({this.menuData});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: menuData.onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          menuData.useImageInPlaceOfIcon == false
              ? Icon(
                  menuData.icon,
//            size: kWidth(context)*0.17,
                  size: menuData.iconSize,
                  color: Colors.white,
                )
              : SizedBox(
                  height: menuData.iconSize * 0.8,
                  child: menuData.image,
                ),
          SizedBox(
            height: 10,
          ),
          Text(
            menuData.text,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}

class MenuData {
  IconData icon;
  Image image;
  String text;
  VoidCallback onTap;
  bool useImageInPlaceOfIcon;
  double iconSize;

  MenuData(
      {this.icon,
      this.onTap,
      this.text,
      this.useImageInPlaceOfIcon = false,
      this.image,
      this.iconSize});
}
