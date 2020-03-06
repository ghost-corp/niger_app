import 'package:flutter/material.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'package:niger_app/globals/colors.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    final pageList = [
      PageModel(
          color: kAlternateColorDark10,
          heroAssetPath: "assets/images/map.png",
          title: Text(""),
          body: Text(
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed"
            " diam nonumy eirmod tempor invidunt ut labore et dolore.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, fontSize: 22),
          ),
          iconAssetPath: ""),
      PageModel(
          color: kAlternateColorDark50,
          heroAssetPath: "assets/images/gov.jpg",
          title: Text(""),
          body: Text(
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed"
            " diam nonumy eirmod tempor invidunt ut labore et dolore.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, fontSize: 22),
          ),
          iconAssetPath: ""),
      PageModel(
          color: kAlternateColorDark100,
          heroAssetPath: "assets/images/roundabout.jpg",
          title: Text(""),
          body: Text(
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed"
            " diam nonumy eirmod tempor invidunt ut labore et dolore.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, fontSize: 22),
          ),
          iconAssetPath: "")
    ];

    return Scaffold(
      body: FancyOnBoarding(
        doneButtonText: "Done",
        skipButtonText: "Skip",
        pageList: pageList,
        onDoneButtonPressed: () {
          Navigator.of(context).pushNamed("signup");
        },
        onSkipButtonPressed: () {
          Navigator.of(context).pushNamed("signup");
        },
      ),
    );
  }
}
