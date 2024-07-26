
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../pages/chat_view.dart';
import '../pages/home2.dart';
import '../pages/post_view.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {

  int _selectedIndex = 0;
  List<Widget> bottomlist = [
    Home2(),
    Chat(),
    Post(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(-1.0, 0.0),
              end: Alignment(1.0, 0.0),
              colors: [
            Color(0xFFF3802B),
            Color(0xFFFAE42C),
          ],
            stops: [0.0, 1.0],

          )
        ),
        child: CurvedNavigationBar(

          index: 0,
          items: [
            CurvedNavigationBarItem(child:
            Icon(Icons.home_outlined,size: 24.sp,),label:"Home",labelStyle: TextStyle(color: Color(0xFF000000),fontFamily: "Figtree",fontWeight: FontWeight.w600,
                fontSize: 14.sp)
           ),
            CurvedNavigationBarItem(child: Icon(CupertinoIcons.chat_bubble_text,size: 24.sp,),label: "Chat",labelStyle:TextStyle(color: Color(0xFF000000),fontFamily: "Figtree",fontWeight: FontWeight.w600,
                fontSize: 14.sp) ),
            CurvedNavigationBarItem(child: Icon(Icons.bookmark_border_rounded,size: 24.sp,),label: "Post",labelStyle: TextStyle(color: Color(0xFF000000),fontFamily: "Figtree",fontWeight: FontWeight.w600,
            fontSize: 14.sp))


          ],
          color: Colors.transparent,
          buttonBackgroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: _onItemTapped,
          letIndexChange: (index) => true,
          height: 60,

        ),
      ),
      body: Center(
        child: bottomlist.elementAt(_selectedIndex),
      ),





    );
  }
}
// initialActiveIndex: _selectedIndex,
// onTap: _onItemTapped ,