import 'package:doctor_hunt/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatefulWidget{
  const Register({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RegisterState();
  }
}

class _RegisterState extends State<Register>{
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
                    const Text("Join us to start searching",style: TextStyle(
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
                              SizedBox(width: 20,),
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
                              SizedBox(width: 20,),
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
                        hintText: 'Name',
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
                          // Handle button press
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.appColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Set to 0 for rectangle
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        ),
                        child: const Text("Sign up",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                        ),),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                        child: Text("Have an account? Log in",style: TextStyle(color: AppColors.appColor,fontSize: 14,fontWeight: FontWeight.w500),)
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }

}