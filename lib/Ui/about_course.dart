import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'course_content.dart';

class AboutCourse extends StatefulWidget {
  const AboutCourse({super.key});

  @override
  State<AboutCourse> createState() => _AboutCourseState();
}

class _AboutCourseState extends State<AboutCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF292574),
      body: Column(
        children: [
          Container(
            width: 375.w,
            height: 259.h,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/vector3.png",), fit: BoxFit.contain ,alignment: Alignment(1, 0),)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only( top: 18.h,
                    left: 3.w,),

                  child: IconButton(onPressed: () {
                    Navigator.of(context).pop();
                  }, icon: ImageIcon(AssetImage("assets/ArrowLeft.png"),size: 24.sp,),splashColor: Colors.transparent,color: Colors.white,),
                ),
              ],
            ),
          ),
          Container(
            height: 553.h,
            width: 375.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.r),
                topRight: Radius.circular(24.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 24.w,right: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 26.h,
                      left: 134.w,
                      right: 133.w,
                    ),
                    child: Container(
                      width: 60.w,
                      height: 6.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF0F4FD),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.r)),
                      ),
                    ),
                  ),
                  SizedBox(height: 21.h,),
                  Container(
                    width: 102.w,
                    height: 25.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFC983DE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'New Course',
                        style:GoogleFonts.montserrat(textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          height: 0.h,
                        ) ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8.h,),
                  Row(
                    children: [
                      SizedBox(
                        width: 210.w,
                        child: Text(
                          'User Experience Class',
                          style:GoogleFonts.montserrat(textStyle: TextStyle(
                            color: Color(0xFF272323),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            height: 0.h,
                          ) ),
                        ),
                      ),
                      SizedBox(width: 53.w,),
                      Container(
                        width: 64.w,
                        height: 25.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFF292574),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Free',
                            style:GoogleFonts.montserrat(textStyle:TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ) ) ,
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 16.h,),
                  Row(
                    children: [
                      Container(
                        width: 32.w,
                        height: 32.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage("assets/DemoPic.png"))
                        ),
                      ),
                      SizedBox(width: 8.w,),
                      SizedBox(
                        width: 150.w,
                        child: Opacity(
                          opacity: 0.50.sp,
                          child: Text(
                            'Ardy Gunawan tjhrtrtr',
                            style:GoogleFonts.montserrat(textStyle: TextStyle(
                              color: Color(0xFF272323),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ) ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w,right: 8.w),
                        child: Image.asset("assets/star.png",width: 16.w,height: 15.279.h,),
                      ),
                      SizedBox(
                        width: 25.w,
                        child: Opacity(
                          opacity: 0.50.sp,
                          child: Text(
                            '5.0',
                            style:GoogleFonts.montserrat(textStyle:TextStyle(
                              color: Color(0xFF272323),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ) ) ,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w,),
                      Image.asset("assets/clock.png",width: 16.w,height: 16.h,),

                      SizedBox(
                        width: 58.w,
                        child: Opacity(
                          opacity: 0.50.sp,
                          child: Text(
                            '5h 15m',
                            textAlign: TextAlign.end,
                            style:GoogleFonts.montserrat(textStyle:TextStyle(
                              color: Color(0xFF272323),
                              fontSize: 11.8.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ) ) ,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.h,bottom: 24.h),
                    child: Divider(
                      color: Color(0xFFF0F4FD),
                      height: 1.h,

                    ),
                  ),
                  Text(
                    'About Course',
                    style:GoogleFonts.montserrat(textStyle: TextStyle(
                      color: Color(0xFF272323),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      height: 0.h,
                    ) ),
                  ),
                  SizedBox(height: 8.h,),
                  SizedBox(
                    width: 327.w,
                    height: 185.h,
                    child: Opacity(
                      opacity: 0.50.h,
                      child: SingleChildScrollView(
                        child: Text(
                          'In this course, you will learn the comprehensive program training of User Experience and mastering user-centered design techniques. You will also learn how to make digital prototyping properly. At the end of this course, you will be ready to explore UX Design in your way.  At the end of this course, you will be ready to explore UX Design in your way.',
                          textAlign: TextAlign.justify,
                          style:GoogleFonts.montserrat(textStyle: TextStyle(
                            color: Color(0xFF272323),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ) ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h,),
                  GestureDetector(
                    onTap: () {
                    //  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CourseContent()));
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
                          'Start Course!',
                          textAlign: TextAlign.center,
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
          ),
        ],
      ),

    );
  }
}
