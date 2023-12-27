import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'video_player.dart';

class CourseContent extends StatefulWidget {
  const CourseContent({super.key});

  @override
  State<CourseContent> createState() => _CourseContentState();
}

bool paid=false;

List<String> a =[
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
];

List<bool> b=[
  true,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];


class _CourseContentState extends State<CourseContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF292574),
      body: Column(
        children: [
          Container(
            width: 375.w,
            height: 230.h,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/vector4.png",), fit: BoxFit.contain ,alignment: Alignment(1, 0),)
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

                Padding(
                  padding: EdgeInsets.only(left: 24.w,top: 6.h),
                  child: Text(
                    'User Experience\nClass',
                    style:GoogleFonts.montserrat(textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      height: 0.h,
                    ),
                  ) ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w,top: 8.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8.w),
                        child: Image.asset("assets/star.png",width: 16.w,height: 15.279.h,),
                      ),
                      SizedBox(
                        width: 25.w,
                        child: Opacity(
                          opacity: 0.50.sp,
                          child: Text(
                            '5.0',
                            style:GoogleFonts.montserrat(textStyle:TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ) ) ,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w,),
                      ImageIcon(AssetImage("assets/clock.png",),color: Colors.white,size: 12.sp,),
                      SizedBox(
                        width: 60.w,
                        child: Opacity(
                          opacity: 0.50.sp,
                          child: Text(
                            '5h 15m',
                            textAlign: TextAlign.end,
                            style:GoogleFonts.montserrat(textStyle:TextStyle(
                              color: Colors.white,
                              fontSize: 11.8.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ) ) ,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w,top: 16.h),
                  child: Row(
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
                        width: 160.w,
                        child: Text(
                          'Ardy Gunawan tjhrtrtrvnvn',
                          style:GoogleFonts.montserrat(textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            height: 0.h,
                          ) ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 375.w,
            height: 582.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.r),
                  topRight: Radius.circular(24.r),
                ),
              ),
            ),
            child: Column(
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
                Padding(
                  padding: EdgeInsets.only(left: 24.w,right: 24.w,top: 24.h),
                  child: Row(
                    children: [
                      Text(
                        'Course Content',
                        style:GoogleFonts.montserrat(textStyle: TextStyle(
                          color: Color(0xFF272323),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          height: 0.h,
                        ) ),
                      ),
                      SizedBox(width: 53.w,),
                      Opacity(
                        opacity: 0.50.sp,
                        child: SizedBox(
                          width: 103.w,
                          child: Text(
                            '${a.length.toString()} Videos',
                            textAlign: TextAlign.end,
                            style:GoogleFonts.montserrat(textStyle: TextStyle(
                              color: Color(0xFF272323),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ) ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 24.h,bottom: 0.h,left: 24.w,right: 24.w),
                  child: Divider(
                    color: Color(0xFFF0F4FD),
                    height: 1.h,
                  ),
                ),

                SizedBox(
                  height: 470.h,
                  child: ListView.separated(
                      padding: EdgeInsets.only(
                        top: 32.h,
                          bottom: 30.h,
                          left: 24.w,
                          right: 24.w),
                      itemBuilder: (context, index) {

                    return
                    paid==b[index]?

                      Opacity(
                        opacity: 0.50.sp,
                        child: Container(
                        width: 327.w,
                        height: 95.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF0F4FD),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 16.w,),
                            Container(
                              width: 62.w,
                              height: 62.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.r),
                                image: DecorationImage(image: AssetImage("assets/DemoPic3.png"),fit: BoxFit.fill,),
                              ),
                              child: Container(
                                width: 62.w,
                                height: 62.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: Color(0xFF2A257566)
                                ),
                                child: Center(
                                  child: GestureDetector(
                                      onTap: () {

                                      },
                                      child: Image.asset("assets/playButton.png",width: 24.w,)),
                                ),
                              ),
                            ),
                            SizedBox(width: 16.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 190.w,
                                  child: Text(
                                    '${a[index].toString()}. Intro to User Experience Intro to User Experience',
                                    style:GoogleFonts.montserrat(textStyle: TextStyle(
                                      color: Color(0xFF272323),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                      height: 0.h,
                                    ) ),
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                    maxLines: 2,
                                  ),
                                ),
                                SizedBox(height: 8.h,),
                                Opacity(
                                  opacity: 0.50.sp,
                                  child: Text(
                                    '3min',
                                    style:GoogleFonts.montserrat(textStyle: TextStyle(
                                      color: Color(0xFF272323),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      height: 0.h,
                                    ) ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 13.w,right: 15.w),
                              child: Image.asset("assets/lock.png",width: 14.4.w,),
                            )
                          ],
                        ),
                    ),
                      )
                        :
                    Container(
                      width: 327.w,
                      height: 95.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF0F4FD),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 16.w,),
                          Container(
                            width: 62.w,
                            height: 62.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              image: DecorationImage(image: AssetImage("assets/DemoPic3.png"),fit: BoxFit.fill,),
                            ),
                            child: Container(
                              width: 62.w,
                              height: 62.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  color: Color(0xFF2A257566)
                              ),
                              child: Center(
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>VideoApp()));
                                    },
                                    child: Image.asset("assets/playButton.png",width: 24.w,)),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 190.w,
                                child: Text(
                                  '${a[index].toString()}. Intro to User Experience Intro to User Experience',
                                  style:GoogleFonts.montserrat(textStyle: TextStyle(
                                    color: Color(0xFF272323),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                    height: 0.h,
                                  ) ),
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                  maxLines: 2,
                                ),
                              ),
                              SizedBox(height: 8.h,),
                              Opacity(
                                opacity: 0.50.sp,
                                child: Text(
                                  '3min',
                                  style:GoogleFonts.montserrat(textStyle: TextStyle(
                                    color: Color(0xFF272323),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    height: 0.h,
                                  ) ),
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    );
                  }, separatorBuilder: (context, index) {
                    return SizedBox(height: 24.h,);
                  }, itemCount: a.length),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
