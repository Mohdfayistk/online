import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course_app/Ui/login_screen.dart';

class DemoSignUpScreen extends StatefulWidget {
  const DemoSignUpScreen({super.key});

  @override
  State<DemoSignUpScreen> createState() => _DemoSignUpScreenState();
}

TextEditingController firstName = TextEditingController();
TextEditingController lastName = TextEditingController();
TextEditingController phone = TextEditingController();
TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController confirmPassword = TextEditingController();

class _DemoSignUpScreenState extends State<DemoSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF292574),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 375.w,
              height: 230.h,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/vector5.png"),alignment: Alignment(1, 0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 22.w),
                    child: RichText(text: TextSpan(children: [
                      TextSpan(text: "Stud",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 42.sp,
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          )),
                      TextSpan(text: "ee",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xBFC983DE),
                              fontSize: 42.sp,
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          )),
                    ])),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Container(
              width: double.infinity,
              height: 790.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(24.r),topLeft: Radius.circular(24.r)),
                  color: Colors.white),
              child: Column(children: [
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24.w,
                    ),
                    Text(
                      'Hello,',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Color(0xFF272323).withOpacity(0.60.sp),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            height: 0.h,
                          )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 24.w,
                    ),
                    Text(
                      'Welcome ',
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Color(0xFF272323),
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w700,
                            height: 0.h,
                          )),
                    ),
                  ],
                ),





                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 327.w,
                  height: 60.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF0F4FD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: TextFormField(
                      controller: firstName,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.black,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500)),
                      decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "First Name",
                          hintStyle: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xFF272323).withOpacity(0.60.sp),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ),
                          )),
                    ),
                  ),
                ),

                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 327.w,
                  height: 60.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF0F4FD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: TextFormField(
                      controller: lastName,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.black,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500)),
                      decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Last Name",
                          hintStyle: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xFF272323).withOpacity(0.60.sp),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ),
                          )),
                    ),
                  ),
                ),


                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 327.w,
                  height: 60.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF0F4FD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: TextFormField(
                      controller: username,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.black,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500)),
                      decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Username",
                          hintStyle: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xFF272323).withOpacity(0.60.sp),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 327.w,
                  height: 60.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF0F4FD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: TextFormField(
                      controller: email,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.black,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500)),
                      decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Email",
                          hintStyle: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xFF272323).withOpacity(0.60.sp),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ),
                          )),
                    ),
                  ),
                ),


                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 327.w,
                  height: 60.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF0F4FD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: TextFormField(
                      controller: phone,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.black,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500)),
                      decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Phone",
                          hintStyle: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xFF272323).withOpacity(0.60.sp),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ),
                          )),
                    ),
                  ),
                ),


                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 327.w,
                  height: 60.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF0F4FD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: TextFormField(
                      controller: password,
                      textInputAction: TextInputAction.next,
                      obscureText: true,
                      cursorColor: Colors.black,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500)),
                      decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Password",
                          hintStyle: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xFF272323).withOpacity(0.60.sp),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 327.w,
                  height: 60.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF0F4FD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: TextFormField(
                      controller: confirmPassword,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      cursorColor: Colors.black,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w500)),
                      decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Confirm Password",
                          hintStyle: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Color(0xFF272323).withOpacity(0.60.sp),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LoginScreen()));
                  },
                  child: Container(
                    width: 327.w,
                    height: 60.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFF292574),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    child: Center(
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


              ]),
            ),
          ],
        ),
      ),
    );
  }
}
