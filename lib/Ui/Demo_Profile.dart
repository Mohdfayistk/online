import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class DemoProfile extends StatefulWidget {
  const DemoProfile({super.key});

  @override
  State<DemoProfile> createState() => _DemoProfileState();
}


TextEditingController name = TextEditingController(text: "Safeer");
TextEditingController email = TextEditingController(text: "Safeer@gmail.com");
TextEditingController newPassword = TextEditingController();

bool changePassword = false;

class _DemoProfileState extends State<DemoProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F4FD),
      appBar: AppBar(
        backgroundColor: Color(0xFFF0F4FD),
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: ImageIcon(AssetImage("assets/ArrowLeft.png"),color: Colors.black,size: 24.sp,)),
        title: Text("Profile",
          style: GoogleFonts.montserrat(textStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          )),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30.h,),
          Center(
            child: Container(
              width: 355.w,
              height: 150.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Colors.white
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Row(
                    children: [
                      SizedBox(width: 10.w,),
                      Container(
                        width: 68.w,
                        height: 68.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage("assets/DemoPic.png"),fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 10.w,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        SizedBox(width:265.w,
                          child: Text("Anirudh Ravichander P O ",
                            style: GoogleFonts.montserrat(textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              height: 0.h
                            )),
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            maxLines: 2,
                          ),
                        ),
                        SizedBox(height: 3.h,),
                        Text("anirudhravichanderpo",
                          style: GoogleFonts.montserrat(textStyle: TextStyle(
                            color: Colors.black.withOpacity(0.6.sp),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            height: 0.h
                          )),
                        ),
                      ],),
                    ],
                  ),
                  SizedBox(height: 12.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 218.w,
                        child: Text("anirudhravichanderpo@gmail.com",
                          textAlign: TextAlign.end,
                          style: GoogleFonts.montserrat(textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.6.sp),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h
                          )),
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      Container(width: 2.5.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5.r)
                      ),
                      ),
                      SizedBox(width: 5.w,),
                      SizedBox(
                        width: 108.w,
                        child: Text("+91 9876543210",
                          style: GoogleFonts.montserrat(textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.6.sp),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

      SizedBox(height: 30.h,),

   Container(
          width: 355.w,
          height: 450.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: Colors.white
          ),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [

       ],
     ),
        ),


          SizedBox(height: 25.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 120.w,
                child: TextButton(onPressed: () {

                }, child: Text("Edit Profile",
                  style: GoogleFonts.montserrat(textStyle: TextStyle(
                      color: Color(0xFF292574),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      height: 0.h
                  )),
                ),),
              ),

              SizedBox(width: 15.w,),
              Container(width: 2.5.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5.r)
                ),
              ),
              SizedBox(width: 15.w,),

              SizedBox(
               width: 120.w,
                child: TextButton(
                  onPressed: () {

                }, child: Text("Log Out",
                  style: GoogleFonts.montserrat(textStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      height: 0.h
                  )),
                ),),
              ),
            ],
          )

        ],
      ),
    );
  }


}
