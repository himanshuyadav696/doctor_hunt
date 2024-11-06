import 'package:doctor_hunt/appcolor.dart';
import 'package:doctor_hunt/screens/profile/popular_doctor.dart';
import 'package:doctor_hunt/screens/profile/profile.dart';
import 'package:five_pointed_star/five_pointed_star.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});


  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>{
  final List<String> doctorsList = ['Dr. Smith', 'Dr. Johnson', 'Dr. Williams', 'Dr. Brown', 'Dr. Jones'];
  int myCount = 0;
  bool isChecked = false;
  List<bool> isCheckedList = List.generate(10, (_) => false);


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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  width: double.infinity,
                  height: 160,
                  decoration: const BoxDecoration(
                    color: AppColors.appColor,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi Handwerker! ",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300
                        ),),
                        InkWell(
                          child: Text("Find Your Doctor ",style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                          ),),
                        )
                      ],
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                      },
                      child: const SizedBox(
                        width: 60.0,
                        height: 60.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/images/doctor_one.png'),
                        ),
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
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Icon(Icons.close),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
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
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Text("Live Doctors",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              const SizedBox(height: 10,),
              SizedBox(
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
                            boxShadow: const [
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
                                child: Image.network("https://cdn.pixabay.com/photo/2017/03/14/03/20/woman-2141808_1280.jpg",height: double.infinity,width: double.infinity,fit: BoxFit.cover,),
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
                                  boxShadow: const [
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
                                      const SizedBox(width: 5,),
                                      const Text("Live",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10
                                      ),)
                                    ],
                                  ),
                                ),
                              ),
                              const Center(
                                child: Icon(Icons.play_circle),
                              )
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
              const SizedBox(height: 16,),
              const Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Text("Categories",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(
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
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3,
                                offset: Offset(1, 1), // Shadow position
                              ),
                            ],
                          ),
                          child: const Stack(
                            alignment: Alignment.center,
                            children: [
                              Icon(Icons.heart_broken_rounded)
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Popular",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,)),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>PopularDoctor()));
                      },
                      child: Text("See All",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,)),
                    )
                  ]
                ),
              ),
              SizedBox(
                height: 290,
                child: ListView.builder(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 8,top: 8),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 250,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3,
                                offset: Offset(1, 1), // Shadow position
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              ClipRRect(
                                child: Image.network("https://www.shutterstock.com/image-photo/profile-photo-attractive-family-doc-600nw-1724693776.jpg",height: 150,width: 150,fit: BoxFit.cover,),
                                borderRadius: BorderRadius.circular(12),
                              ),
                             /* Container(
                                  margin: const EdgeInsets.all(16),
                                  child: Image.asset("assets/images/doctor_girl.png"),
                              ),*/
                              SizedBox(height: 10,),
                              const Text("Dr. Fillerup Grab",style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600
                              ),),

                              const Text("Cardio Specialist",style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300
                              ),),
                              const SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FivePointedStar(
                                    color: Colors.grey,
                                    selectedColor: Colors.yellow,
                                    onChange: (count) {
                                      setState(() {
                                        myCount = count;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Feature Doctor",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,)),
                      Text("See All",style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,))
                    ]
                ),
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                    padding: const EdgeInsets.only(left: 20,right: 20,bottom: 8,top: 8),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 200,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 3,
                                offset: Offset(1, 1), // Shadow position
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap:(){
                                        setState(() {
                                          isCheckedList[index] = ! isCheckedList[index];
                                        });
                                      },
                                      child: Icon(
                                        isCheckedList[index] ? Icons.favorite : Icons.favorite_border,
                                        color:  isCheckedList[index] ? Colors.red : Colors.grey,
                                        size: 20.0, // You can adjust the size as needed
                                      ),
                                    ),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20.0,
                                        ),
                                        Text("3.0",style: TextStyle(color: Colors.black),)
                                      ],
                                    )
                                  ]
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 10,),
                                  Container(
                                    margin: const EdgeInsets.all(16),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.network("https://cdn.pixabay.com/photo/2024/04/14/03/21/doctor-8694738_1280.jpg",fit: BoxFit.cover,),
                                    ),
                                  ),
                                  const Text("Dr. Crick",style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                  ),),

                                  const Text("\$25.00/ hours",style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300
                                  ),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
            ],
          ),
        ),
      ),),
    ));
  }

}