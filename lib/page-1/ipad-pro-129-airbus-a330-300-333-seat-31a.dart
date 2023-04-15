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
        // ipadpro129airbusa330300333seat (51:463)
        padding: EdgeInsets.fromLTRB(77*fem, 77*fem, 104*fem, 27*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfff7ebda),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupxwwbDYC (LnJFJjdV1ss2FLZTJQXwWB)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 535*fem, 47*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // materialsymbolsarrowbackrounde (51:464)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 501*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 70*fem,
                        height: 70*fem,
                        child: Image.asset(
                          'assets/page-1/images/material-symbols-arrow-back-rounded.png',
                          width: 70*fem,
                          height: 70*fem,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    // ap2C (51:466)
                    '31A',
                    style: SafeGoogleFont (
                      'Raleway',
                      fontSize: 48*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.175*ffem/fem,
                      color: Color(0xff303e55),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupeulxYit (LnJFh4Kd4rjyFyttiEEuLX)
              margin: EdgeInsets.fromLTRB(27*fem, 0*fem, 0*fem, 37*fem),
              height: 186*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupspbufYc (LnJG9YZVJnP3wGVeHFspbu)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(39.17*fem, 20*fem, 50*fem, 37*fem),
                    width: 372*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff303e55),
                      borderRadius: BorderRadius.circular(20*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(10*fem, 10*fem),
                          blurRadius: 6*fem,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroup7ihh7vQ (LnJGK87rwZ8ZAkCfSq7ihH)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // mdifoodtakeoutboxFmi (51:469)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.17*fem, 1.33*fem),
                                width: 41.67*fem,
                                height: 33.33*fem,
                                child: Image.asset(
                                  'assets/page-1/images/mdi-food-takeout-box-uNg.png',
                                  width: 41.67*fem,
                                  height: 33.33*fem,
                                ),
                              ),
                              Text(
                                // foodordered9s6 (51:468)
                                'Food Ordered',
                                style: SafeGoogleFont (
                                  'Raleway',
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.175*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // chickenricet3z (51:471)
                          margin: EdgeInsets.fromLTRB(23.83*fem, 0*fem, 24*fem, 0*fem),
                          width: double.infinity,
                          height: 62*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xfff7ebda)),
                            borderRadius: BorderRadius.circular(20*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Chicken Rice',
                              style: SafeGoogleFont (
                                'Raleway',
                                fontSize: 36*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.175*ffem/fem,
                                color: Color(0xfff7ebda),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupnnh9MCU (LnJGXT6ewUBayr6x5Mnnh9)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(33.17*fem, 20*fem, 44*fem, 37*fem),
                    width: 382*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff303e55),
                      borderRadius: BorderRadius.circular(20*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(10*fem, 10*fem),
                          blurRadius: 6*fem,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupbwnfBxC (LnJGf7YZ3gnPZq4y1RBWNF)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 21.17*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // iconparksoliddelivery86k (51:479)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.65*fem, 0*fem),
                                width: 42.19*fem,
                                height: 37.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/icon-park-solid-delivery.png',
                                  width: 42.19*fem,
                                  height: 37.5*fem,
                                ),
                              ),
                              Container(
                                // fooddeliveredE9n (51:487)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.83*fem),
                                child: Text(
                                  'Food Delivered',
                                  style: SafeGoogleFont (
                                    'Raleway',
                                    fontSize: 36*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.175*ffem/fem,
                                    color: Color(0xfff7ebda),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // buttonforfooddeliveredYwA (51:478)
                          margin: EdgeInsets.fromLTRB(114.83*fem, 0*fem, 111*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 62*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xfff7ebda)),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'No',
                                  style: SafeGoogleFont (
                                    'Raleway',
                                    fontSize: 36*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.175*ffem/fem,
                                    color: Color(0xfff7ebda),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupgasuPB6 (LnJGrcDQD1gbSoWzQWGasu)
                    padding: EdgeInsets.fromLTRB(31.33*fem, 20*fem, 46*fem, 25*fem),
                    width: 322*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff303e55),
                      borderRadius: BorderRadius.circular(20*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(10*fem, 10*fem),
                          blurRadius: 6*fem,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupdidr53v (LnJGyXBYm6kFh4ya2fdiDR)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 21.17*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // materialsymbolsmodeheatoutline (51:492)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.33*fem, 0*fem),
                                width: 33.33*fem,
                                height: 39.58*fem,
                                child: Image.asset(
                                  'assets/page-1/images/material-symbols-mode-heat-outline.png',
                                  width: 33.33*fem,
                                  height: 39.58*fem,
                                ),
                              ),
                              Container(
                                // foodstatus6zc (51:491)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.83*fem),
                                child: Text(
                                  'Food Status',
                                  style: SafeGoogleFont (
                                    'Raleway',
                                    fontSize: 36*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.175*ffem/fem,
                                    color: Color(0xfff7ebda),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // buttonforfoodstatuspQp (51:567)
                          margin: EdgeInsets.fromLTRB(34.67*fem, 0*fem, 23*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(28*fem, 16*fem, 1*fem, 15*fem),
                              width: double.infinity,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xfff7ebda)),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Text(
                                'Heating   ',
                                style: SafeGoogleFont (
                                  'Raleway',
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.175*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupzhjt4a4 (LnJHfvBuPf8LTJSJmZZHJT)
              margin: EdgeInsets.fromLTRB(27*fem, 0*fem, 0*fem, 33*fem),
              height: 186*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupyu1znW4 (LnJJLyu9UsfVivmpjkYU1Z)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                    width: 372*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // trayWBA (51:488)
                          left: 91*fem,
                          top: 20*fem,
                          child: Align(
                            child: SizedBox(
                              width: 78*fem,
                              height: 54*fem,
                              child: Text(
                                'Tray',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // mditrayawi (51:494)
                          left: 41.1667480469*fem,
                          top: 44*fem,
                          child: Align(
                            child: SizedBox(
                              width: 41.67*fem,
                              height: 14.58*fem,
                              child: Image.asset(
                                'assets/page-1/images/mdi-tray-mUk.png',
                                width: 41.67*fem,
                                height: 14.58*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // redcircle69N (51:498)
                          left: 70*fem,
                          top: 81*fem,
                          child: Align(
                            child: SizedBox(
                              width: 75*fem,
                              height: 75*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(37.5*fem),
                                  color: Color(0xffb31a23),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // mdialphaxbrp (51:499)
                          left: 70*fem,
                          top: 83*fem,
                          child: Align(
                            child: SizedBox(
                              width: 75*fem,
                              height: 75*fem,
                              child: Image.asset(
                                'assets/page-1/images/mdi-alpha-x.png',
                                width: 75*fem,
                                height: 75*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // trayhur (51:521)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 372*fem,
                              height: 186*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  color: Color(0xff303e55),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(10*fem, 10*fem),
                                      blurRadius: 6*fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // component1z8G (56:613)
                          left: 148*fem,
                          top: 83*fem,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(21.46*fem, 27.62*fem, 21.22*fem, 24.3*fem),
                              width: 75*fem,
                              height: 75*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff303e55)),
                                color: Color(0xfff7ebda),
                                borderRadius: BorderRadius.circular(37.5*fem),
                              ),
                              child: Center(
                                // charmtickTGk (I56:613;51:559)
                                child: SizedBox(
                                  width: 32.31*fem,
                                  height: 23.08*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/charm-tick-MTW.png',
                                    width: 32.31*fem,
                                    height: 23.08*fem,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // traystatusBCk (51:522)
                          left: 107*fem,
                          top: 20*fem,
                          child: Align(
                            child: SizedBox(
                              width: 183*fem,
                              height: 43*fem,
                              child: Text(
                                'Tray Status',
                                style: SafeGoogleFont (
                                  'Raleway',
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.175*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // mditrayTg4 (51:523)
                          left: 57.1667480469*fem,
                          top: 44*fem,
                          child: Align(
                            child: SizedBox(
                              width: 41.67*fem,
                              height: 14.58*fem,
                              child: Image.asset(
                                'assets/page-1/images/mdi-tray.png',
                                width: 41.67*fem,
                                height: 14.58*fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupvdhmZj6 (LnJJjZ5sPEPVWowjvCvdHm)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 0*fem),
                    width: 382*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // lidHf6 (51:502)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 218.7*fem,
                              height: 186*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  color: Color(0xff303e55),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(10*fem, 10*fem),
                                      blurRadius: 6*fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // ellipse3BEg (51:503)
                          left: 70*fem,
                          top: 79*fem,
                          child: Align(
                            child: SizedBox(
                              width: 75*fem,
                              height: 75*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(37.5*fem),
                                  color: Color(0xffb31a23),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // mdialphax6Me (51:504)
                          left: 70*fem,
                          top: 81*fem,
                          child: Align(
                            child: SizedBox(
                              width: 75*fem,
                              height: 75*fem,
                              child: Image.asset(
                                'assets/page-1/images/mdi-alpha-x-e5e.png',
                                width: 75*fem,
                                height: 75*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // lidzC8 (51:507)
                          left: 109*fem,
                          top: 18*fem,
                          child: Align(
                            child: SizedBox(
                              width: 49*fem,
                              height: 54*fem,
                              child: Text(
                                'Lid',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // mdibordertopvariantVeg (51:508)
                          left: 61.25*fem,
                          top: 26.25*fem,
                          child: Align(
                            child: SizedBox(
                              width: 37.5*fem,
                              height: 37.5*fem,
                              child: Image.asset(
                                'assets/page-1/images/mdi-border-top-variant-Qzk.png',
                                width: 37.5*fem,
                                height: 37.5*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // lidbxc (51:531)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 382*fem,
                              height: 186*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  color: Color(0xff303e55),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(10*fem, 10*fem),
                                      blurRadius: 6*fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // component1uTW (56:617)
                          left: 153*fem,
                          top: 86*fem,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(21.46*fem, 27.62*fem, 21.22*fem, 24.3*fem),
                              width: 75*fem,
                              height: 75*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xff303e55)),
                                color: Color(0xfff7ebda),
                                borderRadius: BorderRadius.circular(37.5*fem),
                              ),
                              child: Center(
                                // charmtickBR2 (I56:617;51:559)
                                child: SizedBox(
                                  width: 32.31*fem,
                                  height: 23.08*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/charm-tick.png',
                                    width: 32.31*fem,
                                    height: 23.08*fem,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // lidstatusv7i (51:536)
                          left: 125*fem,
                          top: 18*fem,
                          child: Align(
                            child: SizedBox(
                              width: 165*fem,
                              height: 43*fem,
                              child: Text(
                                'Lid Status',
                                style: SafeGoogleFont (
                                  'Raleway',
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.175*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // mdibordertopvariantbzY (51:537)
                          left: 77.25*fem,
                          top: 26.25*fem,
                          child: Align(
                            child: SizedBox(
                              width: 37.5*fem,
                              height: 37.5*fem,
                              child: Image.asset(
                                'assets/page-1/images/mdi-border-top-variant-YD6.png',
                                width: 37.5*fem,
                                height: 37.5*fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupkpnfukL (LnJK5DBnMXabYF2jnckpNF)
                    width: 322*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // pairpairedqdz (51:510)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 319.48*fem,
                              height: 186*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  color: Color(0xff303e55),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(10*fem, 10*fem),
                                      blurRadius: 6*fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // pairpairedLKr (51:511)
                          left: 90*fem,
                          top: 79*fem,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 126*fem,
                              height: 62*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xfff7ebda)),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Pair',
                                  style: SafeGoogleFont (
                                    'Raleway',
                                    fontSize: 36*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.175*ffem/fem,
                                    color: Color(0xfff7ebda),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // pairstatusNnL (51:512)
                          left: 93*fem,
                          top: 19*fem,
                          child: Align(
                            child: SizedBox(
                              width: 191*fem,
                              height: 54*fem,
                              child: Text(
                                'Pair Status',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // akariconslinkchain49N (51:513)
                          left: 42.2492675781*fem,
                          top: 27.2493896484*fem,
                          child: Align(
                            child: SizedBox(
                              width: 37.5*fem,
                              height: 37.5*fem,
                              child: Image.asset(
                                'assets/page-1/images/akar-icons-link-chain-9LC.png',
                                width: 37.5*fem,
                                height: 37.5*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // pairpairedVkU (51:539)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 322*fem,
                              height: 186*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  color: Color(0xff303e55),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(10*fem, 10*fem),
                                      blurRadius: 6*fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // pairpaired8oS (51:571)
                          left: 89*fem,
                          top: 86*fem,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 126*fem,
                              height: 62*fem,
                              decoration: BoxDecoration (
                                border: Border.all(color: Color(0xfff7ebda)),
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Paired',
                                  style: SafeGoogleFont (
                                    'Raleway',
                                    fontSize: 36*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.175*ffem/fem,
                                    color: Color(0xfff7ebda),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // pairstatusLPi (51:541)
                          left: 93*fem,
                          top: 19*fem,
                          child: Align(
                            child: SizedBox(
                              width: 176*fem,
                              height: 43*fem,
                              child: Text(
                                'Pair Status',
                                style: SafeGoogleFont (
                                  'Raleway',
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.175*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // akariconslinkchainppg (51:542)
                          left: 42.2492675781*fem,
                          top: 27.2493896484*fem,
                          child: Align(
                            child: SizedBox(
                              width: 37.5*fem,
                              height: 37.5*fem,
                              child: Image.asset(
                                'assets/page-1/images/akar-icons-link-chain.png',
                                width: 37.5*fem,
                                height: 37.5*fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupakbq8qN (LnJKsrWjGW6soSPSmKaKbq)
              margin: EdgeInsets.fromLTRB(27*fem, 0*fem, 0*fem, 37*fem),
              width: double.infinity,
              height: 186*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupnvrx1uA (LnJLBvpwr5c1Z2Wk6PnvrX)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(153*fem, 18*fem, 137*fem, 29*fem),
                    width: 792*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xff303e55),
                      borderRadius: BorderRadius.circular(20*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(10*fem, 10*fem),
                          blurRadius: 6*fem,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouppph1UGx (LnJLMvYHu9RvkZwtsgpph1)
                          margin: EdgeInsets.fromLTRB(78.17*fem, 0*fem, 102*fem, 17.17*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // icsharperroroutlinePui (51:549)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.17*fem, 0*fem),
                                width: 41.67*fem,
                                height: 41.67*fem,
                                child: Image.asset(
                                  'assets/page-1/images/ic-sharp-error-outline.png',
                                  width: 41.67*fem,
                                  height: 41.67*fem,
                                ),
                              ),
                              Container(
                                // heatableissuesJFz (51:548)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.83*fem),
                                child: Text(
                                  'HeaTable Issues',
                                  style: SafeGoogleFont (
                                    'Raleway',
                                    fontSize: 36*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.175*ffem/fem,
                                    color: Color(0xfff7ebda),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          // prototypeissuesbuttonQZv (51:547)
                          onPressed: () {},
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 74*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xfff7ebda)),
                              borderRadius: BorderRadius.circular(20*fem),
                            ),
                            child: Center(
                              child: Text(
                                'None',
                                style: SafeGoogleFont (
                                  'Raleway',
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.175*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupm5795g4 (LnJLcAdZRcdfDAbBjjM579)
                    width: 322*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // temperatureRV2 (51:473)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 318.86*fem,
                              height: 186*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  color: Color(0xff303e55),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(10*fem, 10*fem),
                                      blurRadius: 6*fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // temperatureiDE (51:474)
                          left: 55*fem,
                          top: 21*fem,
                          child: Align(
                            child: SizedBox(
                              width: 236*fem,
                              height: 54*fem,
                              child: Text(
                                'Temperature',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // chickenricecpQ (51:475)
                          left: 109*fem,
                          top: 88*fem,
                          child: Container(
                            width: 81*fem,
                            height: 74*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xfff7ebda)),
                              borderRadius: BorderRadius.circular(20*fem),
                            ),
                            child: Center(
                              child: Text(
                                '40°',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // fluenttemperature16regular5hz (51:496)
                          left: 21.5*fem,
                          top: 24.125*fem,
                          child: Align(
                            child: SizedBox(
                              width: 21.88*fem,
                              height: 43.44*fem,
                              child: Image.asset(
                                'assets/page-1/images/fluent-temperature-16-regular-2o2.png',
                                width: 21.88*fem,
                                height: 43.44*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // temperatureNSC (51:517)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 322*fem,
                              height: 186*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  color: Color(0xff303e55),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(10*fem, 10*fem),
                                      blurRadius: 6*fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // temperatureGXa (51:518)
                          left: 55*fem,
                          top: 21*fem,
                          child: Align(
                            child: SizedBox(
                              width: 215*fem,
                              height: 43*fem,
                              child: Text(
                                'Temperature',
                                style: SafeGoogleFont (
                                  'Raleway',
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.175*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // chickenriceyB6 (51:519)
                          left: 119*fem,
                          top: 83*fem,
                          child: Container(
                            width: 81*fem,
                            height: 74*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xfff7ebda)),
                              borderRadius: BorderRadius.circular(20*fem),
                            ),
                            child: Center(
                              child: Text(
                                '40°',
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 36*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // fluenttemperature16regularqUC (51:525)
                          left: 21.5*fem,
                          top: 24.125*fem,
                          child: Align(
                            child: SizedBox(
                              width: 21.88*fem,
                              height: 43.44*fem,
                              child: Image.asset(
                                'assets/page-1/images/fluent-temperature-16-regular-5f6.png',
                                width: 21.88*fem,
                                height: 43.44*fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // legendwXE (51:552)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 259*fem, 0*fem),
              child: Text(
                'Legend',
                textAlign: TextAlign.right,
                style: SafeGoogleFont (
                  'Poppins',
                  fontSize: 32*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5*ffem/fem,
                  color: Color(0xff303e55),
                ),
              ),
            ),
            Container(
              // autogrouphwbm3qA (LnJMC4pjvP2VhCKUUBhWbm)
              margin: EdgeInsets.fromLTRB(393*fem, 0*fem, 311*fem, 0*fem),
              width: double.infinity,
              height: 90*fem,
              child: Stack(
                children: [
                  Positioned(
                    // ellipse6NMe (51:573)
                    left: 277*fem,
                    top: 7*fem,
                    child: Align(
                      child: SizedBox(
                        width: 75*fem,
                        height: 75*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(37.5*fem),
                            border: Border.all(color: Color(0xff303e55)),
                            color: Color(0xfff7ebda),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // charmtickGT2 (51:574)
                    left: 298.4631347656*fem,
                    top: 34.6181640625*fem,
                    child: Align(
                      child: SizedBox(
                        width: 32.31*fem,
                        height: 23.08*fem,
                        child: Image.asset(
                          'assets/page-1/images/charm-tick-EvL.png',
                          width: 32.31*fem,
                          height: 23.08*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // legendboxy6Y (51:551)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 481*fem,
                        height: 90*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(20*fem),
                            border: Border.all(color: Color(0xff303e55)),
                            color: Color(0xfff7ebda),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse2GLY (51:553)
                    left: 32*fem,
                    top: 7*fem,
                    child: Align(
                      child: SizedBox(
                        width: 75*fem,
                        height: 75*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(37.5*fem),
                            color: Color(0xffb31a23),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // mdialphaxas2 (51:554)
                    left: 32*fem,
                    top: 7*fem,
                    child: Align(
                      child: SizedBox(
                        width: 75*fem,
                        height: 75*fem,
                        child: Image.asset(
                          'assets/page-1/images/mdi-alpha-x-Z7N.png',
                          width: 75*fem,
                          height: 75*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // problemJ2L (51:557)
                    left: 124*fem,
                    top: 20*fem,
                    child: Align(
                      child: SizedBox(
                        width: 127*fem,
                        height: 38*fem,
                        child: Text(
                          'Problem',
                          textAlign: TextAlign.right,
                          style: SafeGoogleFont (
                            'Raleway',
                            fontSize: 32*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.175*ffem/fem,
                            color: Color(0xff303e55),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // goodzA4 (51:561)
                    left: 371*fem,
                    top: 21*fem,
                    child: Align(
                      child: SizedBox(
                        width: 81*fem,
                        height: 38*fem,
                        child: Text(
                          'Good',
                          textAlign: TextAlign.right,
                          style: SafeGoogleFont (
                            'Raleway',
                            fontSize: 32*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.175*ffem/fem,
                            color: Color(0xff303e55),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}