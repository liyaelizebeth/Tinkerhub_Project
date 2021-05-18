import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:together/utilities/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(1080, 2400), allowFontScaling: false);
    // final height = ScreenUtil().setHeight(2400);
    // final width = ScreenUtil().setWidth(1080);
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.jpg',
            ),
            RichText(
              text: TextSpan(
                text: 'TO',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w800,
                  color: logoRedColor,
                  fontSize: 96.sp,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'GE',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w800,
                      color: logoVioletColor,
                      fontSize: 96.sp,
                    ),
                  ),
                  TextSpan(
                    text: 'TH',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w800,
                      color: logoGreenColor,
                      fontSize: 96.sp,
                    ),
                  ),
                  TextSpan(
                    text: 'ER',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w800,
                      color: logoYellowColor,
                      fontSize: 96.sp,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Covid Requirements Viewer',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                color: fadeTextColor,
                fontSize: 52.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
