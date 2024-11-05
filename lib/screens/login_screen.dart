import 'package:doctor_hunt/appcolor.dart';
import 'package:doctor_hunt/screens/Register.dart';
import 'package:doctor_hunt/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/app_background.png'), // Your image path
                fit: BoxFit.cover, // Adjusts the image to cover the entire container
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 100,left: 16,right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("Welcome back",style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Rubik'
                    ),),
                    const SizedBox(height: 10,),
                    const Text("You can search c ourse, apply course and find scholarship for abroad studies",textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 16
                    ),),
                    const SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          color: Colors.white,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 25),
                            child: Row(children: [
                              SvgPicture.asset("assets/images/ic_google.svg",height: 28,),
                              const SizedBox(width: 20,),
                              const Text("Google",style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                              ),)
                            ],),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0), // Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 10,left: 25,right: 25),
                            child: Row(children: [
                              SvgPicture.asset("assets/images/facebook.svg",height: 28,),
                              const SizedBox(width: 20,),
                              const Text("Facebook",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                              ),)
                            ],),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2.0,
                      ),
                    ),contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),),
                    ),
                    const SizedBox(height: 15,),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.appColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Set to 0 for rectangle
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        ),
                        child: const Text('Login',style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                        ),),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        showCustomBottomSheet(context);
                      },
                        child: const Text("Forgot Password",style: TextStyle(color: AppColors.appColor,fontSize: 14,fontWeight: FontWeight.w500),)),
                    SizedBox(height: 50,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                      },
                        child: const Text("Don’t have an account? Join us",style: TextStyle(color: AppColors.appColor,fontSize: 14,fontWeight: FontWeight.w500),)
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }

  void showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Wrap(
          children: [
            Container(
              margin: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: SvgPicture.asset("assets/images/bottom_bar.svg")),
                  const SizedBox(height: 20,),
                  const Text("Forgot Password",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 24
                  ),),
                  const Text("Enter your email for the verification proccesss,we will send 4 digits code to your email.",style: TextStyle(
                      fontSize: 14
                  ),),
                  const SizedBox(height: 30,),
                  const TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 2.0
                            )
                        ),
                        contentPadding: EdgeInsets.only(top: 15,bottom: 15,left: 10,right: 10)
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(onPressed: (){
                    },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.appColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15)
                        ),
                        child: const Text("Continue",style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600
                        ),)),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}



