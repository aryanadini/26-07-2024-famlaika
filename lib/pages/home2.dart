
import 'package:famlaika1/constants/DisplaySibling.dart';
import 'package:famlaika1/constants/appbarConst.dart';
import 'package:famlaika1/constants/home2appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../constants/colors.dart';
import '../widgets/Custom_BottomLeftCurveClipper.dart';


class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  List<String> siblingimages = [
    "assets/img/messi1.jpg",
    "assets/img/img.png",
    "assets/img/messi1.jpg",
    "assets/img/img.png",
    "assets/img/messi1.jpg",
    "assets/images/img_intersect_1.png"

  ];
  List<String> siblingnames = ["a", "b", "c", "d", "e","f"];
  String? siblingimg;
  String? siblingnme;
  bool selected = false;
  ScrollController _scrollController=ScrollController();
  bool isScrolledToEnd=false;

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    siblingimg = siblingimages[0];
    siblingnme = siblingnames[0];
    _scrollController.addListener(_scrollListener );
  }
  void _scrollListener(){
    if (_scrollController.position.atEdge){
      bool isTop=_scrollController.position.pixels==0;
      if(!isTop){
        setState(() {
          isScrolledToEnd=true;
        });
      }
    }else{
      setState(() {
        isScrolledToEnd=false;
      });
    }
  }
  @override
  void dispose(){
    _scrollController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width.r;
    var count = 4;
    var widthFactor = .5.r;
    void change() {
      print("calling");
      setState(() {
        count = siblingimages.length;
        widthFactor = 1.0.r;
      });
    }

    return SafeArea(

      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: Home2AppBar(
          titleImage: "assets/images/img_logo.png",
          showActions: true,
        ),
    drawer: Drawer(
      backgroundColor: AppColors.primaryColor,
      child: ListView(
        padding: EdgeInsets.all(0.r),
        children: [

          Padding(
            padding: EdgeInsets.only(top: 12.r,),
            child:
            Container(
              height: 85.r,
              decoration: BoxDecoration(
                  color: Colors.black

              ),
              child: ListTile(
                leading: CircleAvatar(),
                title: Text("Arya Nandini", style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    fontFamily: 'Figtree',
                    color: Color(0xFFFFFFFF)),),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.lightGreen,
                      size: 14.sp,
                    ),
                    SizedBox(width: 4.r),
                    Text(
                      "Active",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Figtree',
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),

            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              ListTile(
                leading: const Icon(
                  Icons.account_circle, color: Colors.white,),
                title: const Text(' My Profile ',
                  style: TextStyle(color: Color(0xFFFFFFFF)),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                    Icons.near_me_outlined, color: Color(0xFFFFFFFF)),
                title: const Text(' Request ',
                    style: TextStyle(color: Color(0xFFFFFFFF))),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo, color: Color(0xFFFFFFFF)),
                title: const Text(' Gallery Access ',
                    style: TextStyle(color: Color(0xFFFFFFFF))),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                    Icons.description, color: Color(0xFFFFFFFF)),
                title: const Text(' Activity ',
                    style: TextStyle(color: Color(0xFFFFFFFF))),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                    Icons.person_add_alt_1, color: Color(0xFFFFFFFF)),
                title: const Text(' Invite Person ',
                    style: TextStyle(color: Color(0xFFFFFFFF))),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                    Icons.settings, color: Color(0xFFFFFFFF)),
                title: const Text(
                    'Settings', style: TextStyle(color: Color(0xFFFFFFFF))),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Padding(padding: EdgeInsets.only(bottom: 220)),

              ListTile(
                leading: const Icon(Icons.logout, color: Color(0xFFFFFFFF)),
                title: const Text('Log Out',
                    style: TextStyle(color: Color(0xFFFFFFFF))),
                onTap: () {
                  // Handle logout action here
                  Navigator.pop(context);
                },
              ),

            ],
          ),


        ],
      ),
    ),




        body: SingleChildScrollView(

          child: Stack(
            children: [
              Column(

                children: [


                  ClipPath(
                    clipper: BottomLeftCurveClipper(

                    ),
                    child: Container(
                      height: 127.h,
                      //color: Colors.pinkAccent,
                      color: Color(0xFF262626),

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [


                         SizedBox(height: 17.h,),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              height: 85.5.h,
                             width: double.maxFinite,

                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 0.h,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 8.h,),
                                  Stack(
                                      children: [
                                        CircleAvatar(
                                          radius: 30.r,
                                          backgroundColor: Color(0xFF2B2B2B),
                                          child: Column(

                                            children: [

                                              IconButton(

                                                onPressed: () {},
                                                icon: Icon(Icons.person),
                                                alignment: Alignment.center,
                                                iconSize: 35.sp,
                                                color: Colors.black,

                                              ),


                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          top: 25.h,
                                          right: 2.w,
                                          left: 45.w,
                                          child: Container(
                                            height: 40.h,
                                            width: 50.w,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.amber),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 13.sp,
                                            ),
                                          ),
                                        ),
                                      ]
                                  ),
                                  SizedBox(height: 7.h,),

                                  Text("Your Story", style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Figtree',
                                      color: Color(0xFFFFFFFF),
                                      fontSize: 14.sp
                                  ),),
                                  //SizedBox(height: 3.h),

                                ],

                              ),

                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Container(

                    height: 80.h,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 20.w,top: 25.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Your Family",
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontFamily: 'Figtree',
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                              Text(
                                "2 Member",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontFamily: 'Figtree',
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFFFFFFF),height: 1.36.h
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.penToSquare,color:Color(0xFFFFFFFF) ,size: 20,),
                          onPressed: () {
                            // Add your edit button action here
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height:  1.sh,
                      //MediaQuery.of(context).size.height ,
                      width: 1.sw,
                      //MediaQuery.of(context).size.width ,
                      //670.r,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0.1.sh,
                            //MediaQuery.of(context).size.height * 0.1.h,
                            left: 0.512.sw-15.w,
                            //(MediaQuery.of(context).size.width * 0.5.w) - 15.w,
                            child: Icon(Icons.favorite,color: Color(0xFFF7B52C),size: 24.sp,)


                            // Image(image: AssetImage(
                            //     'assets/images/img_heart.png'),
                            //   height: 24, width: 24,
                            //   alignment: Alignment.topCenter,
                            //
                            // ),
                          ),
                          Positioned(
                              top:0.15.sh,
                              //MediaQuery.of(context).size.height * 0.15.h,
                              left: 0.51.sw-1.w,
                              //(MediaQuery.of(context).size.width * 0.5.w) - 1.w,
                              child: CContainer(
                                cwidth: 1,
                                cheight: 0.088.sh,
                                //MediaQuery.of(context).size.height * 0.095,
                              )
                          ), // heart line
                          Positioned(
                              top: 0.245.sh,
                              //MediaQuery.of(context).size.height * 0.245,
                              left: 0.25.sw,
                              //(MediaQuery.of(context).size.width * 0.25),
                              child: CContainer(
                                  cheight: 1,
                                  cwidth: selected == false ?  0.554.sw
                                  //(MediaQuery.of(context).size.width * 0.54) :
                                  : isScrolledToEnd==false ?
                                      0.8.sw
                                      : 0.404.sw,
                                 // (MediaQuery.of(context).size.width * 0.8):(MediaQuery.of(context).size.width * 0.4)


                              )),
                          ///above sibling
                          Positioned(
                              top: 0.245.sh,
                              //MediaQuery.of(context).size.height * 0.245,
                              left: 0.25.sw,
                              //(MediaQuery.of(context).size.width * 0.25),
                              child: CContainer(
                                cheight: 0.51.sw,
                                //(MediaQuery.of(context).size.width * 0.51),
                                cwidth: 1,
                              )),

                          ///near sibling
                          selected==false?
                          Positioned(
                              top: 0.245.sh,
                              //MediaQuery.of(context).size.height * 0.245,
                              left: 0.42.sw,
                              //(MediaQuery.of(context).size.width * 0.4),
                              child: CContainer(
                                cheight: 0.3.sw,
                                //(MediaQuery.of(context).size.width * 0.3),
                                cwidth: 1,
                              )): Container(),

                          ///first sibilng line

                          Positioned(
                              top: 0.531.sh,
                              //MediaQuery.of(context).size.height * 0.531,
                              left: 0.51.sw-1,
                              //(MediaQuery.of(context).size.width * 0.5) - 1,
                              child: CContainer(
                                cwidth: 1,
                                cheight: 0.115.sh,
                                //MediaQuery.of(context).size.height * 0.115,
                              )

                          ),

                          ///child line
                          Positioned(
                              top: 0.53.sh,
                              //MediaQuery.of(context).size.height * 0.53,
                              left: 0.25.sw,
                              //(MediaQuery.of(context).size.width * 0.25),
                              child: CContainer(
                                cheight: 1,
                                cwidth: 0.5.sw,
                                //(MediaQuery.of(context).size.width * 0.5),
                              )),
                          /// me to spouse
                            selected == false ? Positioned(
                              top: 0.29.sh,
                              //MediaQuery.of(context).size.height * 0.29,
                              left: 0.4.sw-48.w,
                              //(MediaQuery.of(context).size.width * 0.4) - 48,
                              child: DisplaySibling(
                                imagehgt: 50.h,
                                imagewdt: 58.w,
                                imagebradius: 40.r,
                                cthgt: 46.h,
                                ctwdt: 120.w,
                                imageUrl: siblingimages[0],
                                persongname: siblingnames[0],
                                personrelation: "Sibling",
                              ),
                            )///first sibling
                          :Positioned(
                            top:0.29.sh,
                            //MediaQuery.of(context).size.height * 0.29,
                            left:0.42.sw - 55.w,
                            //(MediaQuery.of(context).size.width * 0.42) - 55,
                            child: Container(
                              color: Colors.transparent,
                              height: 10.h,

                              width: 10.w,
                              // child: DisplaySibling(
                              //   imagehgt: 80,
                              //   imagewdt: 80,
                              //   imagebradius: 40,
                              //   cthgt: 56,
                              //   ctwdt: 110,
                              //   imageUrl: siblingimages[0],
                              //   persongname: siblingnames[0],
                              //   personrelation: "Sibling",
                              // ),
                            ),
                          ),

                          Positioned(
                            top: 0.241.sh,
                            //MediaQuery.of(context).size.height * 0.245,
                            left: selected==false ?
                            0.55.sw - 22.5.w : 0.32.sw - 22.5.w,
                            //((MediaQuery.of(context).size.width * 0.55) - 22.5):((MediaQuery.of(context).size.width*0.32)-22.5),

                            child: selected == false
                                ? Padding(
                              padding: EdgeInsets.only(
                                  left: 0.063.sw,
                                 // MediaQuery.of(context).size.width * 0.063
                              ),
                              child: Container(
                                height: 80.h,
                                width: 480.w,

                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: count >= 4 ?5 : siblingimages
                                      .length + 1,
                                  itemBuilder: (context, index) =>
                                  !(index == count)
                                      ? InkWell(
                                    highlightColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    onTap: () {
                                      change();
                                      setState(() {
                                        siblingimg = siblingimages[index];
                                        siblingnme = siblingnames[index];
                                      });
                                    },
                                    child: Align(
                                      widthFactor: widthFactor,
                                      child: DisplaySmallWidget(
                                        siblingname: siblingnames[index],
                                        sinblingimage:
                                        AssetImage("${siblingimages[index]}"),
                                        simagehgt: 40.h,
                                        simagewdt: 40.w,
                                        simagebradius: 20.r,
                                      ),
                                    ),
                                  )
                                      : InkWell(
                                    highlightColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    onTap: () {
                                      change();
                                      setState(() {
                                        selected = true;
                                        siblingimg = siblingimages[index];
                                        siblingnme = siblingnames[index];
                                      });
                                    },
                                    child: Align(
                                      widthFactor: widthFactor,
                                      child: DisplaySmallWidget(
                                        simagehgt: 40.h,
                                        simagewdt: 40.w,
                                        simagebradius: 40.r,
                                        stext: "2 +",
                                        siblingname: '',
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                            )
                              //   : Padding(
                              // padding: const EdgeInsets.only(left: 20.0),
                              : Container(
                                height: 0.226.sh,
                                //MediaQuery.of(context).size.height * 0.226,

                                width: 0.3.sh,
                                //MediaQuery.of(context).size.height * 0.3,/// show all frames
                                child: InkWell(
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  onTap: (){
                                    setState(() {
                                      selected =false;
                                    });
                                  },
                                child: ListView.builder(
                                  controller: _scrollController,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: siblingimages.length,
                                  itemBuilder: (BuildContext context,
                                      int index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 2.0,right:30),
                                      child: Container(
                                        height:0.1.sh + 80.h,
                                        //MediaQuery.of(context).size.height * 0.1 + 80,
                                        width: 110.w,
                                        child: Stack(children: [
                                          Positioned(
                                            top: 4.h,
                                            left: 55.w,
                                            //110 / 2,
                                            child: CContainer(
                                              cwidth: 1,
                                              cheight:0.1.sh,
                                              //MediaQuery.of(context).size.height * 0.1,
                                            ),
                                          ), /// above siblings line vertical
                                          Positioned(
                                            bottom: 0,
                                            left: 0,
                                            child: DisplaySibling(
                                              imagehgt: 50.h,
                                              imagewdt: 58.w,
                                              imagebradius: 40.r,
                                              cthgt: 46.h,
                                              ctwdt: 120.w,
                                              imageUrl: siblingimages[index],
                                              persongname: siblingnames[index],
                                              personrelation: "Sibling",
                                            ),
                                          ),
                                        ]),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                         // ),

                          Positioned(
                            top: 0.04.sh,
                            //MediaQuery.of(context).size.height * 0.04,
                            left: 0.25.sw -55.w,
                            //(MediaQuery.of(context).size.width * 0.25) - 55,
                            child: DisplaySibling(
                              imagehgt: 50.h,
                              imagewdt: 58.w,
                              imagebradius: 40.r,
                              cthgt: 46.h,
                              ctwdt: 120.w,
                            ),
                          ), // father
                          Positioned(
                            top: 0.04.sh,
                            //MediaQuery.of(context).size.height * 0.04,
                            left: 0.75.sw - 55.w,
                            //(MediaQuery.of(context).size.width * 0.75) - 55,
                            child: DisplaySibling(
                              imagehgt: 50.h,
                              imagewdt: 58.w,
                              imagebradius: 40.r,
                              cthgt: 46.h,
                              ctwdt: 120.w,
                            ),
                          ), // mother
                          Positioned(
                            top: 0.47.sh,
                            //MediaQuery.of(context).size.height * 0.47,
                            left:0.24.sw - 55.w,
                            //(MediaQuery.of(context).size.width * 0.25) - 55,
                            child: DisplaySibling(
                              imagehgt: 50.h,
                              imagewdt: 58.w,
                              imagebradius: 40.r,
                              cthgt: 46.h,
                              ctwdt: 120.w,
                            ),
                          ), // me
                          Positioned(
                            top: 0.47.sh,
                            //MediaQuery.of(context).size.height * 0.47,
                            left: 0.75.sw - 55.w,
                            //(MediaQuery.of(context).size.width * 0.75) - 55,
                            child: DisplaySibling(
                              imagehgt: 50.h,
                              imagewdt: 58.w,
                              imagebradius: 40.r,
                              cthgt: 46.h,
                              ctwdt: 120.w,
                            ),
                          ), //spouse
                          Positioned(
                            top: 0.63.sh,
                            //MediaQuery.of(context).size.height * 0.63,
                            left: 0.5.sw- 55.w,
                            //(MediaQuery.of(context).size.width * 0.5) - 55,
                            child: DisplaySibling(
                              imagehgt: 50.h,
                              imagewdt: 58.w,
                              imagebradius: 40.r,
                              cthgt: 46.h,
                              ctwdt: 120.w,
                            ),
                          ), // child
                        ],
                      )),
                  // Container(
                ],
              ),


            ],
          ),

        ),


//bottom

      ),

    );
  }

}






