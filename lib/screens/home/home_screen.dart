import 'package:doctor_hunt/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});


  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>{
  final List<String> doctorsList = ['Dr. Smith', 'Dr. Johnson', 'Dr. Williams', 'Dr. Brown', 'Dr. Jones'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/app_background.png'), // Your image path
            fit: BoxFit.cover, // Adjusts the image to cover the entire container
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  color: AppColors.appColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hi Handwerker! ",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300
                      ),),
                      Text("Find Your Doctor ",style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  const SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('assets/images/doctor_one.png'),
                    ),
                  )
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130,left: 20,right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.close),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.black
                      )
                    ),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),),
                ),
              ),
            ],),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("Live Doctors",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 10,),
            Container(
              height: 200,
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 8,top: 8),
                  itemCount: 16,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: 200,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 3,
                              offset: Offset(1, 1), // Shadow position
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/images/intro_slider.png",
                                fit: BoxFit.cover,
                                width: 200,
                                height: double.infinity,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                margin: EdgeInsets.all(8),
                                width: 45,
                                height: 25,
                                decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 3,
                                    offset: Offset(1, 1), // Shadow position
                                  ),
                                ],
                              ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("assets/images/dot.svg"),
                                    SizedBox(width: 5,),
                                    Text("Live",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Icon(Icons.play_circle),
                            )
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("Categories",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 20,right: 20,bottom: 8,top: 8),
                  itemCount: 16,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 3,
                              offset: Offset(1, 1), // Shadow position
                            ),
                          ],
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Icon(Icons.remove_red_eye)
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Popular",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,)),
                  Text("See All",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,))
                ]
              ),
            ),
          ],
        ),
      ),),
    ));
  }

}