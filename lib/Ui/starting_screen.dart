import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course_app/Ui/Demo_Profile.dart';
import 'package:online_course_app/Ui/Demo_Sign_Up.dart';
import 'package:online_course_app/Ui/login_screen.dart';
import 'package:online_course_app/Ui/my_course.dart';
import 'package:online_course_app/Ui/signUp_screen.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF292574),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 345.h,
              child: Stack(
                children: [
                  Positioned(
                      left: 130.w,
                      child: Image.asset("assets/vector1.png",width: 300.w,height: 300.h,)),
                  Positioned(
                    top: 75.h,
                      left: 65.w,
                      child: Image.asset("assets/img1.png",width: 258.w,height: 270.h,)),
                ],
              ),
            ),
            SizedBox(height: 56.h,),
            RichText(text: TextSpan(children: [
              TextSpan(text: "Stud",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 64.sp,
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
              )),
              TextSpan(text: "ee",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Color(0xBFC983DE),
                      fontSize: 64.sp,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  )),
            ])),
            SizedBox(height: 10.h,),
            SizedBox(
              width: 248.w,
              child: Text(
                'Lear easy and fast with Studee\nWatch video learning anytime',
                textAlign: TextAlign.center,
                style:GoogleFonts.montserrat(textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                )),
              ),
            ),
            SizedBox(height: 58.h,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LoginScreen()));
              },
              child: Container(
                width: 327.w,
                height: 60.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Sign In',
                    style:GoogleFonts.montserrat(textStyle: TextStyle(
                      color: Color(0xFF272323),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      height: 0.h,
                    ) ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.h,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DemoSignUpScreen()));
                // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DemoProfile()));
              },
              child: Container(
                width: 327.w,
                height: 60.h,
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.4000000059604645),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                child:Center(
                  child: Text(
                    'Sign Up',
                    style:GoogleFonts.montserrat(textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      height: 0.h,
                    ) ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
