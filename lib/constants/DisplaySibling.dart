import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DisplaySibling extends StatelessWidget {
  double cthgt;
  double ctwdt;
  double imagehgt;
  double imagewdt;
  double imagebradius;
  String? imageUrl;
  String? persongname;
  String? personrelation;

  DisplaySibling(
      {super.key,
        required this.imagehgt,
        required this.imagewdt,
        required this.imagebradius,
        required this.cthgt,
        this.imageUrl,
        this.persongname,
        this.personrelation,
        required this.ctwdt});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(cthgt + imagehgt),
      width: ScreenUtil().setWidth(ctwdt + imagewdt),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
           // left: ScreenUtil().setWidth((ctwdt + imagewdt - ctwdt) / 2),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: Color(0xFF383838),
              ),
              height: ScreenUtil().setHeight(cthgt),
              width: ScreenUtil().setWidth(ctwdt),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    persongname ?? "Victoria",
                    style: TextStyle(fontSize: 16.sp, color: Color(0xFFFFFFFFFF),fontWeight: FontWeight.w400),
                  ),
                  Text(
                    personrelation ?? "Relation",
                    style: TextStyle(fontSize: 10.sp, color: Color(0xFFFFFFFFFF),fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(12),
            left: ScreenUtil().setWidth((ctwdt - imagewdt) / 2),
            child: Container(
              height:ScreenUtil().setHeight(imagehgt),
              width: ScreenUtil().setWidth(imagewdt),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(ScreenUtil().setWidth(imagebradius)),
                  bottomRight: Radius.circular(ScreenUtil().setWidth(imagebradius)),
                  topLeft: Radius.circular(ScreenUtil().setWidth(imagebradius)),
                ),
                border: Border.all(
                  width:ScreenUtil().setWidth(1),

                  color: Color(0xFFF7B52C),
                ),
                image: DecorationImage(
                  image: AssetImage("${imageUrl}"),
                  // Use AssetImage for local assets
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DisplaySmallWidget extends StatelessWidget {
  double simagehgt;
  double simagewdt;
  double simagebradius;
  AssetImage? sinblingimage;
  String? stext;
  String siblingname;

  DisplaySmallWidget({
    super.key,
    required this.simagehgt,
    required this.simagewdt,
    required this.simagebradius,
    required this.siblingname,
    this.sinblingimage,
    this.stext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: simagehgt + (MediaQuery.of(context).size.width * 0.1),
      width: simagewdt,
      child: Stack(
        children: [
          Positioned(
              top: -1.h,
              left: ScreenUtil().setWidth(simagewdt) / 2,
              child: CContainer(
                cheight: ScreenUtil().setHeight(MediaQuery.of(context).size.width * 0.1),
                cwidth: 1,
              )),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              height:ScreenUtil().setHeight(simagehgt),
              width:ScreenUtil().setWidth(simagewdt),
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  image: sinblingimage != null
                      ? DecorationImage(
                    image: sinblingimage!,
                    fit: BoxFit.cover,
                  )
                      : null,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(ScreenUtil().setWidth(simagebradius)),
                    bottomRight: Radius.circular(ScreenUtil().setWidth(simagebradius)),
                    topLeft: Radius.circular(ScreenUtil().setWidth(simagebradius)),

                  ),
                  border: Border.all(
                    width: ScreenUtil().setWidth(1),
                    color: Color(0xFFF7B52C),
                  )),
              child: sinblingimage == null
                  ? Center(
                child: Text(
                  stext ?? "",
                  style: TextStyle(fontSize: 16.sp, color: Color(0xFF000000),fontWeight: FontWeight.w400),
                ),
              )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}

class CContainer extends StatelessWidget {
 final double cheight;
 final double cwidth;
  CContainer({super.key, required this.cheight, required this.cwidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF7B52C),
      height: ScreenUtil().setHeight(cheight),
      width: ScreenUtil().setWidth(cwidth),
    );
  }
}