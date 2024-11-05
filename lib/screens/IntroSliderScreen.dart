import 'dart:developer';
import 'package:doctor_hunt/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class IntroScreenCustomLayout extends StatefulWidget{
  const IntroScreenCustomLayout({super.key});

  @override
  State<StatefulWidget> createState() {
    return IntroScreenCustomLayoutState();
  }

}

class IntroScreenCustomLayoutState extends State<IntroScreenCustomLayout> {
  late Function goToTab;

  void onDonePress() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
  }

  void onTabChangeCompleted(index) {
    log("onTabChangeCompleted, index: $index");
  }

  Widget renderNextBtn() {
    return const Text(
      "Next",
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20
      ),
    );
  }

  Widget renderDoneBtn() {
    return const Text(
      "Done",
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20
      ),
    );
  }

  Widget renderSkipBtn() {
    return const Text(
      "Skip",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),
    );
  }


  List<Widget> generateListCustomTabs() {
    return List.generate(
      3,
          (index) => Container(
        width: double.infinity,
        height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/intro_slider.png'), // Your image path
                fit: BoxFit.cover, // Adjusts the image to cover the entire container
              ),
            ),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 40),
            const SizedBox(height: 20),
            const SizedBox(
              width: 300.0,
              height: 300.0,
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/doctor_one.png'),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                children: [
                  Text(
                    "Find Trusted Doctors $index",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoMono',
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old. $index",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black26,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoMono',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/intro_slider.png'), // Your image path
            fit: BoxFit.cover, // Adjusts the image to cover the entire container
          ),
        ),
        child: IntroSlider(
          key: UniqueKey(),
          renderSkipBtn: renderSkipBtn(),

          // Next button
          renderNextBtn: renderNextBtn(),

          // Done button
          renderDoneBtn: renderDoneBtn(),
          onDonePress: onDonePress,

          // Indicator
          indicatorConfig: const IndicatorConfig(
            colorIndicator: Color(0xff27d81b),
            sizeIndicator: 13.0,
            typeIndicatorAnimation: TypeIndicatorAnimation.sizeTransition,
          ),

          // Custom tabs
          listCustomTabs: generateListCustomTabs(),
          backgroundColorAllTabs: Colors.white,
          refFuncGoToTab: (refFunc) {
            goToTab = refFunc;
          },

          // Behavior
          scrollPhysics: const BouncingScrollPhysics(),
          onTabChangeCompleted: onTabChangeCompleted,
        ),
      ),
    );
  }
}