import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

File? _image;
final picker = ImagePicker();

TextEditingController name = TextEditingController(text: "Safeer");
TextEditingController email = TextEditingController(text: "Safeer@gmail.com");
TextEditingController newPassword = TextEditingController();

bool changePassword = false;

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F4FD),
      appBar: AppBar(
        backgroundColor: Color(0xFFF0F4FD),
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: ImageIcon(AssetImage("assets/ArrowLeft.png"),color: Colors.black,size: 24.sp,)),
        title: Text("Edit Profile",
        style: GoogleFonts.montserrat(textStyle: TextStyle(
          color: Colors.black,
          fontSize: 19.sp,
          fontWeight: FontWeight.w500,
        )),
        ),
        centerTitle: true,

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
children: [
  SizedBox(height: 20.h,),
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      GestureDetector(

        onTap: () {
          getGalleryImage();
        },
        child: Container(
          width: 130.w,
          height: 130.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage("assets/DemoPic.png"),fit: BoxFit.cover),
border: Border.all(color: Colors.white,width: 5.w)
          ),
        ),
      )
    ],
  ),

  SizedBox(height: 20.h,),

  Center(
    child: Container(
      width: 337.w,
      height:changePassword==true?570.h: 550.h,
     decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.circular(15.r)
     ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40.h,),

          SizedBox(
            width: 300.w,
            child: TextFormField(
              controller: name,
              style: GoogleFonts.montserrat(textStyle: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              )),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    color: Colors.black
                  )
                )
              ),
            ),
          ),
SizedBox(height: 20.h,),
          SizedBox(
            width: 300.w,
            child: TextFormField(
              controller: email,
              style: GoogleFonts.montserrat(textStyle: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              )),
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: BorderSide(
                          color: Colors.black
                      )
                  )
              ),
            ),
          ),

      SizedBox(height: 20.h,),
          TextButton(onPressed: () {

            setState(() {
              changePassword=!changePassword;
            });

          }, child: Text(
            "Change Password",
            style: GoogleFonts.montserrat(textStyle:
            TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w700
            )),
          )),


          Visibility(
            visible: changePassword,
            child: Column(
              children: [
                SizedBox(height: 20.h,),
                SizedBox(
                  width: 300.w,
                  child: TextFormField(
                    // controller: old password,
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        labelText: "Old Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: BorderSide(
                                color: Colors.black
                            )
                        )
                    ),
                  ),
                ),

            SizedBox(height: 20.h,),
            SizedBox(
              width: 300.w,
              child: TextFormField(
                controller: newPassword,
                textInputAction: TextInputAction.next,
                obscureText: true,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    labelText: "New Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                            color: Colors.black
                        )
                    )
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              width: 300.w,
              child: TextFormField(
                textInputAction: TextInputAction.done,
                obscureText: true,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                            color: Colors.black
                        )
                    )
                ),
              ),
            ),
              ],
            ),
          ),


          SizedBox(
            height:changePassword==true?20.h: 230.h,
          ),

          Container(
            width: 250.w,
            height: 50.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: Color(0xFF292574),
            ),
            child: Center(
              child: Text(
                "Update",
                style: GoogleFonts.montserrat(textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                )),
              ),
            ),
          )
        ],
      ),
    ),
  )
],
      ),
    );
  }
  Future<void> getGalleryImage() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('no image found');
      }
    });
  }

}
