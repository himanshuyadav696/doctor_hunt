import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'IntroSliderScreen.dart';
class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigateIntro();
  }
    _navigateIntro() async{
      await Future.delayed(const Duration(milliseconds: 2000),(){});
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>IntroScreenCustomLayout()));
    }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/app_background.png'), // Your image path
                fit: BoxFit.cover, // Adjusts the image to cover the entire container
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/images/splash_logo.svg"),
                const SizedBox(height: 10,),
                const Text("Doctor Hunt",style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 10,),
                const CircularProgressIndicator(
                    color: Colors.green,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}