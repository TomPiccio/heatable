import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:heatable/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // ipadpro129homepageooN (1:5)
        padding:
            EdgeInsets.fromLTRB(388 * fem, 178 * fem, 388 * fem, 174 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfff7ebda),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupijzyN7i (LnHyoM8kprjqXPRUs4iJZy)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 61 * fem),
              width: double.infinity,
              height: 494 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // fluentairplanetakeoff16regular (1:439)
                    left: 169 * fem,
                    top: 301 * fem,
                    child: Container(
                      width: 16 * fem,
                      height: 16 * fem,
                    ),
                  ),
                  Positioned(
                    // rectangle2Zxt (50:276)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(
                        sigmaX: 45 * fem,
                        sigmaY: 45 * fem,
                      ),
                      child: Align(
                        child: SizedBox(
                          width: 590 * fem,
                          height: 494 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20 * fem),
                              color: Color(0xf4ffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // layer11Zz (50:257)
                    left: 79.3064575195 * fem,
                    top: 44.3333358765 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 435.48 * fem,
                        height: 324.07 * fem,
                        child: Image.asset(
                          'assets/page-1/images/layer1.png',
                          width: 435.48 * fem,
                          height: 324.07 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // heatableFjE (50:275)
                    left: 79 * fem,
                    top: 378 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 459 * fem,
                        height: 76 * fem,
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2102272034 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: 'H',
                                style: SafeGoogleFont(
                                  'Raleway',
                                  fontSize: 64 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.175 * ffem / fem,
                                  letterSpacing: 19.2 * fem,
                                  color: Color(0xffb31a23),
                                ),
                              ),
                              TextSpan(
                                text: 'EA',
                                style: SafeGoogleFont(
                                  'Raleway',
                                  fontSize: 60 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.175 * ffem / fem,
                                  letterSpacing: 18 * fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                              TextSpan(
                                text: 'T',
                                style: SafeGoogleFont(
                                  'Raleway',
                                  fontSize: 64 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.175 * ffem / fem,
                                  letterSpacing: 19.2 * fem,
                                  color: Color(0xff303e55),
                                ),
                              ),
                              TextSpan(
                                text: 'ABLE',
                                style: SafeGoogleFont(
                                  'Raleway',
                                  fontSize: 60 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.175 * ffem / fem,
                                  letterSpacing: 18 * fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: SafeGoogleFont(
                                  'Raleway',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.175 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame3dx4 (50:278)
              margin:
                  EdgeInsets.fromLTRB(178 * fem, 0 * fem, 179 * fem, 0 * fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 117 * fem,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff303e55)),
                    borderRadius: BorderRadius.circular(20 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(10 * fem, 10 * fem),
                        blurRadius: 6 * fem,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Begin',
                      style: SafeGoogleFont(
                        'Raleway',
                        fontSize: 64 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.175 * ffem / fem,
                        color: Color(0xff303e55),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
