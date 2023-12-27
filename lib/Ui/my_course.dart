import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course_app/Ui/course_content.dart';

import '../Bloc/course/course_bloc.dart';
import '../Repository/Modelclass/course.dart';


class MyCourse extends StatefulWidget {
  const MyCourse({super.key});

  @override
  State<MyCourse> createState() => _MyCourseState();
}
bool test=true;
late List<Course> data;
class _MyCourseState extends State<MyCourse> {
  @override
  void initState() {
    BlocProvider.of<CourseBloc>(context).add(FetchCourseEvent());
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F4FD),
      appBar: AppBar(
        backgroundColor: Color(0xFFF0F4FD),
        shadowColor: Color(0xFFF0F4FD),
        surfaceTintColor: Color(0xFFF0F4FD),
        foregroundColor: Color(0xFFF0F4FD),
        elevation: 0,
        leading:IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: ImageIcon(AssetImage("assets/ArrowLeft.png"),color: Colors.black,size: 24.sp,)),
        title: Text("My Course",
          style: GoogleFonts.montserrat(textStyle: TextStyle(
            color: Colors.black,
            fontSize: 19.sp,
            fontWeight: FontWeight.w500,
          )),
        ),
        centerTitle: true,
      ),
      body:test==true? BlocBuilder<CourseBloc, CourseState>(
  builder: (context, state) {
    if (state is CourseBlocLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    if (state is CourseBlocError) {
      return Center(child: Text('error'));
    }
    if (state is CourseBlocLoaded) {
      print('loaded');
      data = BlocProvider
          .of<CourseBloc>(context)
          .courseModel;
      return ListView.separated(
          padding: EdgeInsets.only(top: 30.h, bottom: 25.h),
          itemBuilder: (context, index) {
            return Center(
              child: Card(
                shadowColor: Colors.black,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => CourseContent()));
                  },
                  child: Container(
                    width: 327.w,
                    height: 100.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 19.w,
                        ),
                        Container(
                          width: 62.w,
                          height: 62.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            image: DecorationImage(
                                image: AssetImage("assets/DemoPic2.png"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(
                          width: 24.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 220.w,
                              child: Text(
                                '${index + 1} ${data[index].name} ',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: Color(0xFF272323),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                      height: 0.h,
                                    )),
                                maxLines: 1,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/star.png",
                                  width: 16.w,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                SizedBox(
                                  width: 30.w,
                                  child: Text(
                                    '5.0',
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          color: Color(0xFF272323)
                                              .withOpacity(0.50.sp),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          height: 0.h,
                                        )),
                                  ),
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Image.asset(
                                  "assets/clock.png",
                                  width: 16.w,
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                SizedBox(
                                  width: 120.w,
                                  child: Text(
                                    '10h 15m ',
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          color: Color(0xFF272323)
                                              .withOpacity(0.50.sp),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          height: 0.h,
                                        )),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }, separatorBuilder: (context, index) {
        return SizedBox(height: 20.h,);
      }, itemCount: data.length);
    }
    else {
      return SizedBox();

    }
          })
          :Center(
        child:  TextButton(
          onPressed: () {

          },
          style: ButtonStyle(
            overlayColor: MaterialStatePropertyAll(Color(0xff000000).withOpacity(0.10.sp)),
          ),
          child: Text(
            'BUY A COURSE !',
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Color(0xFF272323)
                     ,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  height: 0.h,
                )),
          ),
        ),
      ),
    );
  }
}
