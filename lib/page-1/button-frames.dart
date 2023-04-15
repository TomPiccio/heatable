import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:heatable/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1148;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // buttonframesbKN (16:57)
        width: double.infinity,
        height: 1148 * fem,
        decoration: BoxDecoration(
          color: Color(0xff303e55),
        ),
        child: Stack(
          children: [
            Positioned(
              // buttonforfoodstatusVfe (16:67)
              left: 106 * fem,
              top: 239 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(20 * fem, 20 * fem, 20 * fem, 20 * fem),
                width: 227 * fem,
                height: 296 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff9747ff)),
                  borderRadius: BorderRadius.circular(5 * fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      // property1nothingxp8 (16:64)
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 74 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xfff7ebda)),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Nothing',
                            style: SafeGoogleFont(
                              'Raleway',
                              fontSize: 36 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.175 * ffem / fem,
                              color: Color(0xfff7ebda),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17 * fem,
                    ),
                    TextButton(
                      // property1heatingCCg (16:65)
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            28 * fem, 16 * fem, 1 * fem, 15 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xfff7ebda)),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Text(
                          'Heating   ',
                          style: SafeGoogleFont(
                            'Raleway',
                            fontSize: 36 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.175 * ffem / fem,
                            color: Color(0xfff7ebda),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17 * fem,
                    ),
                    TextButton(
                      // property1warmingcXJ (16:66)
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 74 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xfff7ebda)),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Warming',
                            style: SafeGoogleFont(
                              'Raleway',
                              fontSize: 36 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.175 * ffem / fem,
                              color: Color(0xfff7ebda),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // buttonfortrayliftedprematurely (21:37)
              left: 138 * fem,
              top: 19 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(20 * fem, 21 * fem, 24 * fem, 32 * fem),
                width: 123 * fem,
                height: 203 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff9747ff)),
                  borderRadius: BorderRadius.circular(5 * fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // noyFN (21:35)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 26 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 62 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xfff7ebda)),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'No',
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 36 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.175 * ffem / fem,
                                color: Color(0xfff7ebda),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      // yesRNG (21:36)
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 62 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xfff7ebda)),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Yes',
                            style: SafeGoogleFont(
                              'Raleway',
                              fontSize: 36 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.175 * ffem / fem,
                              color: Color(0xfff7ebda),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // pairpaired6DW (51:308)
              left: 106 * fem,
              top: 585 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(20 * fem, 20 * fem, 38 * fem, 42 * fem),
                width: 184 * fem,
                height: 223 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff9747ff)),
                  borderRadius: BorderRadius.circular(5 * fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // pairmaY (51:306)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 37 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 62 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xfff7ebda)),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Pair',
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 36 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.175 * ffem / fem,
                                color: Color(0xfff7ebda),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      // pairingqKW (51:307)
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 62 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xfff7ebda)),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Paired',
                            style: SafeGoogleFont(
                              'Raleway',
                              fontSize: 36 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.175 * ffem / fem,
                              color: Color(0xfff7ebda),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // issuesbuttonKEg (51:337)
              left: 444 * fem,
              top: 165 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(20 * fem, 20 * fem, 20 * fem, 20 * fem),
                width: 542 * fem,
                height: 626 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff9747ff)),
                  borderRadius: BorderRadius.circular(5 * fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // property1noneBGt (51:330)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 12 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 74 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xfff7ebda)),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'None',
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 36 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.175 * ffem / fem,
                                color: Color(0xfff7ebda),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // property1connectionissueswifiQ (51:331)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 10 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 74 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xfff7ebda)),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Connection Issues (WiFi)',
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 36 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.175 * ffem / fem,
                                color: Color(0xfff7ebda),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // property1overheatingfbN (51:332)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 12 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 74 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xfff7ebda)),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Overheating',
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 36 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.175 * ffem / fem,
                                color: Color(0xfff7ebda),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // property1rxtxcommunicationerro (51:333)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 12 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 74 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xfff7ebda)),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'RXTX Communication Error',
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 36 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.175 * ffem / fem,
                                color: Color(0xfff7ebda),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // property1arduinopinerrorN8Q (51:334)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 12 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 74 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xfff7ebda)),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Arduino Pin Error',
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 36 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.175 * ffem / fem,
                                color: Color(0xfff7ebda),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // property1sensorissuenxp (51:335)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 10 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 74 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xfff7ebda)),
                            borderRadius: BorderRadius.circular(20 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Sensor Issue',
                              style: SafeGoogleFont(
                                'Raleway',
                                fontSize: 36 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.175 * ffem / fem,
                                color: Color(0xfff7ebda),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      // property1thermometererror49e (51:336)
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 74 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xfff7ebda)),
                          borderRadius: BorderRadius.circular(20 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Thermometer Error',
                            style: SafeGoogleFont(
                              'Raleway',
                              fontSize: 36 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.175 * ffem / fem,
                              color: Color(0xfff7ebda),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // component1L7A (56:602)
              left: 146 * fem,
              top: 858 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(20 * fem, 20 * fem, 20 * fem, 20 * fem),
                width: 115 * fem,
                height: 216 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff9747ff)),
                  borderRadius: BorderRadius.circular(5 * fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // property1redbuttonReQ (56:600)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 26 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffb31a23),
                            borderRadius: BorderRadius.circular(37.5 * fem),
                          ),
                          child: Center(
                            // mdialphaxKjn (56:597)
                            child: SizedBox(
                              width: 75 * fem,
                              height: 75 * fem,
                              child: Image.asset(
                                'assets/page-1/images/mdi-alpha-x-CNC.png',
                                width: 75 * fem,
                                height: 75 * fem,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      // property1tickbutton3vg (56:601)
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            21.46 * fem, 27.62 * fem, 21.22 * fem, 24.3 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff303e55)),
                          color: Color(0xfff7ebda),
                          borderRadius: BorderRadius.circular(37.5 * fem),
                        ),
                        child: Center(
                          // charmtickwFN (51:559)
                          child: SizedBox(
                            width: 32.31 * fem,
                            height: 23.08 * fem,
                            child: Image.asset(
                              'assets/page-1/images/charm-tick-NBS.png',
                              width: 32.31 * fem,
                              height: 23.08 * fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
