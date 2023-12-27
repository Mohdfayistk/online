import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


import '../Bloc/Login/login_bloc.dart';
import '../Repository/Modelclass/login.dart';
import 'my_course.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
late Login data;
TextEditingController username = TextEditingController();
TextEditingController password = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
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
                      child: Image.asset(
                        "assets/vector1.png",
                        width: 300.w,
                        height: 300.h,
                      )),
                  Positioned(
                      top: 75.h,
                      left: 65.w,
                      child: Image.asset(
                        "assets/img1.png",
                        width: 258.w,
                        height: 270.h,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 11.h,
            ),
            Container(
              width: double.infinity,
              height: 456.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(24.r),topLeft: Radius.circular(24.r)),
                  color: Colors.white),
              child: Column(children: [
                SizedBox(
                  height: 50.h,
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
                      'Welcome Back',
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
                      controller: password,
                      textInputAction: TextInputAction.done,
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
SizedBox(height: 16.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {

                      },
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.right,
                        style:GoogleFonts.montserrat(textStyle: TextStyle(
                          color: Color(0xFF292574),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          height: 0.h,
                        )),
                      ),
                    ),
                    SizedBox(width: 24.w,)
                  ],),
                SizedBox(
                  height: 24.h,
                ),
                BlocListener<LoginBloc, LoginState>(
  listener: (context, state) {
    if (state is LoginBlocLoading) {
    print("loading");
    }if (state is LoginBlocError) {
    Text('error');
    }
    if (state is LoginBlocLoaded) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => MyCourse()));
    }
    // TODO: implement listener
  },
  child: GestureDetector(
                  onTap: () {
                    BlocProvider.of<LoginBloc>(context)
                        .add(FetchloginEvent(username: username.text,  password: password.text));
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
                        'Sign In',
                        style:GoogleFonts.montserrat(textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          height: 0.h,
                        ) ),
                      ),
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
