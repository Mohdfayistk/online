
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course_app/Ui/my_course.dart';
import 'package:online_course_app/Ui/profile_screen.dart';

import 'Demo_Profile.dart';
import 'about_course.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


int iC= 10 ;
late double view;

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {

    if(iC<=3){
      view=1.0;
    }else if(iC==4){
      view=1.1;
    }else if(iC==5){
      view=1.3;
    }else if(iC==6){
      view=1.5;
    }else if(iC==7){
      view=1.7;
    }else if(iC==8){
      view=1.8;
    }else if(iC==9){
      view=2.0;
    }else if(iC==10){
      view=2.2;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F4FD),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        surfaceTintColor: Color(0xFFF0F4FD),
        backgroundColor: Color(0xFFF0F4FD),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              _key.currentState?.openDrawer();
            },
            icon: ImageIcon(
              AssetImage("assets/Category.png"),
              size: 28.sp,
              color: Colors.black,
            )),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DemoProfile()));
            },
            child: Container(
              width: 36.w,
              height: 36.h,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/DemoPic.png"), fit: BoxFit.fill)),
            ),
          ),
          SizedBox(
            width: 14.w,
          ),
        ],

        bottom: PreferredSize(preferredSize: Size(375.w, 10.h), child: SizedBox()),
      ),
      key: _key,
      drawer: Drawer(
        width: 220.w,
        child:  ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF292574),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.all(0.sp),
                  decoration: BoxDecoration(color: Color(0xFF292574)),
                  accountName: Text(
                    "Abhishek Mishra",
                    style: GoogleFonts.montserrat(textStyle: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600
                    )),
                  ),
                  accountEmail: Text("abhishekm977@gmail.com",
                    style: GoogleFonts.montserrat(textStyle: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500
                    )),
                  ),
                  currentAccountPictureSize: Size.square(40.sp),
                  currentAccountPicture:Container(
                    width: 20.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage("assets/DemoPic.png"))
                    ),
                  )//circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading:  const Icon(Icons.person,color: Color(0xFF292574),),
              title:  Text(' My Profile ',
                style: GoogleFonts.montserrat(textStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500
                )),),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>DemoProfile()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.book, color: Color(0xFF292574),),
              title:  Text(' My Course ',
                style: GoogleFonts.montserrat(textStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500
                )),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>MyCourse()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium, color: Color(0xFF292574),),
              title:  Text(' Go Premium ',
                style: GoogleFonts.montserrat(textStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500
                )),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label, color: Color(0xFF292574),),
              title:  Text(' Saved Videos ',
                style: GoogleFonts.montserrat(textStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500
                )),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:  Icon(Icons.edit, color: Color(0xFF292574),),
              title:  Text(' Edit Profile ',
                style: GoogleFonts.montserrat(textStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500
                )),),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Color(0xFF292574),),
              title:  Text(' LogOut',
                style: GoogleFonts.montserrat(textStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500
                )),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline_rounded, color: Color(0xFF292574),),
              title:  Text(' About Us',
                style: GoogleFonts.montserrat(textStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500
                )),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        physics:iC<=2?NeverScrollableScrollPhysics(): AlwaysScrollableScrollPhysics(),
        slivers: [
          // SliverAppBar
          SliverAppBar(
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            expandedHeight: 150.h,
            floating: false,
            pinned: true,
            stretch: true,
            centerTitle: true,
            primary: false,
            flexibleSpace:

            // Flexible(
            //   fit: FlexFit.tight,   flex: 10,
            //   child:  Container(
            //     color: Colors.red,
            //   width: 375.w,
            //   height: 200.h,
            //   child: Column(
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //           SizedBox(
            //             width: 24.w,
            //           ),
            //           Text(
            //             'Hello, Jeje',
            //             style: GoogleFonts.montserrat(
            //                 textStyle: TextStyle(
            //                   color: Color(0xFF272323),
            //                   fontSize: 28.sp,
            //                   fontWeight: FontWeight.w700,
            //                   height: 0.h,
            //                 )),
            //           ),
            //         ],
            //       ),
            //
            //       SizedBox(
            //         height: 5.h,
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         children: [
            //           SizedBox(
            //             width: 24.w,
            //           ),
            //           Text(
            //             'What do you want to learn?',
            //             style: GoogleFonts.montserrat(
            //                 textStyle: TextStyle(
            //                   color: Color(0xFF272323).withOpacity(0.50.sp),
            //                   fontSize: 14.sp,
            //                   fontWeight: FontWeight.w500,
            //                   height: 0.h,
            //                 )),
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         height: 32.h,
            //       ),
            //       Container(
            //         width: 327.w,
            //         height: 50.h,
            //         decoration: ShapeDecoration(
            //           color: Colors.white,
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(16.r),
            //           ),
            //         ),
            //         child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             SizedBox(
            //               width: 18.w,
            //             ),
            //             Image.asset(
            //               "assets/Search.png",
            //               width: 24.w,
            //               height: 24.h,
            //             ),
            //             SizedBox(
            //               width: 16.w,
            //             ),
            //             SizedBox(
            //               width: 260.w,
            //               child: TextFormField(
            //                 // controller: search,
            //                 cursorColor: Colors.black,
            //                 style: GoogleFonts.montserrat(
            //                     textStyle: TextStyle(fontSize: 12.sp)),
            //                 decoration: InputDecoration(
            //                   hintText: 'Search..',
            //                   hintStyle: GoogleFonts.montserrat(
            //                       textStyle: TextStyle(
            //                         color: Color(0xFF272323).withOpacity(0.30.sp),
            //                         fontSize: 14.sp,
            //                         fontWeight: FontWeight.w400,
            //                         height: 0.h,
            //                       )),
            //                   enabledBorder: InputBorder.none,
            //                   disabledBorder: InputBorder.none,
            //                   focusedBorder: InputBorder.none,
            //                 ),
            //               ),
            //             )
            //           ],
            //         ),
            //       ),
            //
            //     ],
            //   ),
            // ),
            // ),
            FlexibleSpaceBar(
              expandedTitleScale: 1.0,
              titlePadding: EdgeInsets.only(bottom: 10.h,),

              centerTitle: true,
              title:
              SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                reverse: true,
                child: Column(
                  children: [
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 24.w,
                        ),
                        Text(
                          'Hello, Jeje',
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
                      height: 5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 24.w,
                        ),
                        Text(
                          'What do you want to learn?',
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Color(0xFF272323).withOpacity(0.50.sp),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                height: 0.h,
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Container(
                      width: 327.w,
                      height: 50.h,
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
                            width: 18.w,
                          ),
                          Image.asset(
                            "assets/Search.png",
                            width: 24.w,
                            height: 24.h,
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          SizedBox(
                            width: 260.w,
                            child: TextFormField(
                              // controller: search,
                              cursorColor: Colors.black,
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(fontSize: 12.sp)),
                              decoration: InputDecoration(
                                hintText: 'Search..',
                                hintStyle: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: Color(0xFF272323).withOpacity(0.30.sp),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      height: 0.h,
                                    )),
                                enabledBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),

              background: Container(color: Colors.transparent,),
            ),

          ),


          // SliverList
          SliverFillViewport(
              viewportFraction:view,
              padEnds: true,

              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                    (context, index) =>  Column(
                  children: [
                    SizedBox(height: 26.h,),

                    SizedBox(height: 140.h,
                      child: Swiper(
                        itemBuilder: (context, index){
                          return
                            Center(
                              child: Container(
                                width: 327.w,
                                height: 140.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.r),
                                    image: DecorationImage(
                                        image: AssetImage("assets/vector2.png"),
                                        fit: BoxFit.fill)),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 24.w),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'New Course!',
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w700,
                                              height: 0.h,
                                            )),
                                      ),
                                      SizedBox(
                                        height: 8.h,
                                      ),
                                      Text(
                                        'User Experience Class',
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              height: 0.h,
                                            )),
                                      ),
                                      SizedBox(
                                        height: 16.h,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(builder: (_) => AboutCourse()));
                                        },
                                        child: Container(
                                          width: 83.w,
                                          height: 25.h,
                                          decoration: ShapeDecoration(
                                            color: Color(0xBFC983DE),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(8.r)),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'See Class',
                                              style: GoogleFonts.montserrat(
                                                  textStyle: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.w500,
                                                    height: 0.h,
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                        },
                        itemCount: 5,
                        autoplay: true,
                        pagination:   SwiperPagination(
                            builder: DotSwiperPaginationBuilder(
                                size: 6.sp
                            )
                        ),
                        controller: SwiperController(),
                        viewportFraction: 0.8.sp,
                        scale: 0.9.sp,
                      ),
                    ),

                    SizedBox(
                      height: 32.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Course',
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Color(0xFF272323),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                height: 0.h,
                              )),
                        ),
                        SizedBox(
                          width: 197.w,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'View All',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Color(0xFF272323).withOpacity(0.50.sp),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  height: 0.h,
                                )),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    // SizedBox(
                    //   height: 30.h,
                    //   width: 375.w,
                    //   child: TabBar(
                    //     controller: _tabController,
                    //     tabAlignment: TabAlignment.fill,
                    //     unselectedLabelColor: Color(0xFF272323),
                    //     labelColor:  Color(0xFFFFFFFF),
                    //     labelStyle:GoogleFonts.montserrat(textStyle: TextStyle(
                    //       fontSize: 14.sp,
                    //       fontWeight: FontWeight.w500,
                    //       height: 0.h,
                    //     ) ),
                    //     indicator: BoxDecoration(
                    //       color: Color(0xFF292574),
                    //       borderRadius: BorderRadius.circular(16.r)
                    //     ),
                    //     indicatorSize: TabBarIndicatorSize.tab,
                    //     dividerColor: Colors.transparent,
                    //     tabs:[ Tab(text: "All",),Tab(text: "Design"),Tab(text: "Flutter"),Tab(text: "UI/UX"),],
                    //   ),
                    // ),
                    // SizedBox(height: 10.h,),
                    SizedBox(
                      height: 136*iC.h,
                      child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.only(
                              top: 26.h, bottom: 30.h, left: 24.w, right: 24.w),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>AboutCourse()));
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
                                            '${index+1}.Photoshop Course ',
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
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 36.h,
                            );
                          },
                          itemCount: iC),
                    ),
                  ],
                ),
              )),


          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //         (BuildContext context, int index) {
          //       return ListTile(
          //         title: Text('Item ${index + 1}'), // Display list item with index
          //       );
          //     },
          //     childCount: 1, // Number of list items
          //   ),
          // ),
        ],
      ),
    );
  }

}
