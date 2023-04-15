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
        // ipadpro129airbusa330300333seat (1:27)
        padding: EdgeInsets.fromLTRB(77*fem, 77*fem, 104*fem, 27*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfff7ebda),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupvipmQGx (LnJ5J79Hq1BKBN1arPViPM)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 538*fem, 47*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // materialsymbolsarrowbackrounde (1:300)
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
                          'assets/page-1/images/material-symbols-arrow-back-rounded-3MS.png',
                          width: 70*fem,
                          height: 70*fem,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    // ePua (1:307)
                    '31E',
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
              // autogroupvtvmv8p (LnJ5iG7i85bHF69CaBVTVM)
              margin: EdgeInsets.fromLTRB(27*fem, 0*fem, 0*fem, 37*fem),
              height: 186*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupecdypEC (LnJ6TphTY5MJZ1XLPkeCDy)
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
                          // autogroupk1brFaQ (LnJ6mjMHYjd57mkysjk1BR)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // mdifoodtakeoutboxAxG (14:31)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8.17*fem, 1.33*fem),
                                width: 41.67*fem,
                                height: 33.33*fem,
                                child: Image.asset(
                                  'assets/page-1/images/mdi-food-takeout-box.png',
                                  width: 41.67*fem,
                                  height: 33.33*fem,
                                ),
                              ),
                              Text(
                                // foodorderedTgU (14:30)
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
                          // chickenricenik (15:34)
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
                    // autogroupeykmFsE (LnJ7CU94q2LpLPWP4LeYKm)
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
                          // autogroupha6fXJx (LnJ7Vi9La1h89rBR9yHA6F)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 21.17*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // iconparksoliddeliveryeuN (24:12)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.65*fem, 0*fem),
                                width: 42.19*fem,
                                height: 37.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/icon-park-solid-delivery-B8k.png',
                                  width: 42.19*fem,
                                  height: 37.5*fem,
                                ),
                              ),
                              Container(
                                // fooddeliveredkSc (24:7)
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
                          // buttonforfooddelivered4TJ (24:28)
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
                    // autogroupphvvhmA (LnJ7v2n9S1LTQQCgirPhVV)
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
                          // autogroupum4fbLk (LnJ8AMhcEw9sTQnoWSUM4F)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 21.17*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // materialsymbolsmodeheatoutline (15:41)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.33*fem, 0*fem),
                                width: 33.33*fem,
                                height: 39.58*fem,
                                child: Image.asset(
                                  'assets/page-1/images/material-symbols-mode-heat-outline-Y7J.png',
                                  width: 33.33*fem,
                                  height: 39.58*fem,
                                ),
                              ),
                              Container(
                                // foodstatusEec (15:36)
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
                          // buttonforfoodstatus9Fn (42:52)
                          margin: EdgeInsets.fromLTRB(35.67*fem, 0*fem, 22*fem, 0*fem),
                          child: TextButton(
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
                                  'Nothing',
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
                ],
              ),
            ),
            Container(
              // autogrouphaswnpY (LnJ9RzFb6b1KxNRDbSHASw)
              margin: EdgeInsets.fromLTRB(27*fem, 0*fem, 0*fem, 33*fem),
              height: 186*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogrouptc2f7bv (LnJA345VZn1ikBP5FWTC2F)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                    width: 372*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // trayqnp (20:76)
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
                          // traystatusk96 (51:436)
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
                          // component1E4G (56:603)
                          left: 148*fem,
                          top: 84*fem,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: 75*fem,
                              height: 75*fem,
                              decoration: BoxDecoration (
                                color: Color(0xffb31a23),
                                borderRadius: BorderRadius.circular(37.5*fem),
                              ),
                              child: Center(
                                // mdialphaxXJG (I56:603;56:597)
                                child: SizedBox(
                                  width: 75*fem,
                                  height: 75*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/mdi-alpha-x-B8t.png',
                                    width: 75*fem,
                                    height: 75*fem,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // traystatus2kp (51:437)
                          left: 110*fem,
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
                          // mditrayv5W (51:438)
                          left: 60.1667480469*fem,
                          top: 44*fem,
                          child: Align(
                            child: SizedBox(
                              width: 41.67*fem,
                              height: 14.58*fem,
                              child: Image.asset(
                                'assets/page-1/images/mdi-tray-uL4.png',
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
                    // autogroup7q5dRHA (LnJAJDJuDHyxjKRTGY7q5D)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(83.25*fem, 18*fem, 86*fem, 27*fem),
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
                          // autogrouptxydJLx (LnJAT8DiaPp1DVZs3ktXyd)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20.25*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // mdibordertopvariant33e (51:452)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10.25*fem, 0*fem),
                                width: 37.5*fem,
                                height: 37.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/mdi-border-top-variant.png',
                                  width: 37.5*fem,
                                  height: 37.5*fem,
                                ),
                              ),
                              Container(
                                // lidstatusMa8 (51:451)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.75*fem),
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
                            ],
                          ),
                        ),
                        Container(
                          // component14UY (56:608)
                          margin: EdgeInsets.fromLTRB(74.75*fem, 0*fem, 63*fem, 0*fem),
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom (
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration (
                                color: Color(0xffb31a23),
                                borderRadius: BorderRadius.circular(37.5*fem),
                              ),
                              child: Center(
                                // mdialphaxm84 (I56:608;56:597)
                                child: SizedBox(
                                  width: 75*fem,
                                  height: 75*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/mdi-alpha-x-vdE.png',
                                    width: 75*fem,
                                    height: 75*fem,
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
                    // autogroupgqgjHcC (LnJAfcru9E6QDRMoXNgQGj)
                    width: 322*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // pairstatusDkk (51:295)
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
                          // pairpairedJXJ (51:309)
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
                          // pairstatusmQt (51:300)
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
                          // akariconslinkchaineja (51:296)
                          left: 42.2492675781*fem,
                          top: 27.2493743896*fem,
                          child: Align(
                            child: SizedBox(
                              width: 37.5*fem,
                              height: 37.5*fem,
                              child: Image.asset(
                                'assets/page-1/images/akar-icons-link-chain-uHr.png',
                                width: 37.5*fem,
                                height: 37.5*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // pairpairedwya (51:454)
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
                          // pairstatusEhn (51:456)
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
                          // akariconslinkchainYCg (51:457)
                          left: 42.2492675781*fem,
                          top: 27.2493743896*fem,
                          child: Align(
                            child: SizedBox(
                              width: 37.5*fem,
                              height: 37.5*fem,
                              child: Image.asset(
                                'assets/page-1/images/akar-icons-link-chain-JfA.png',
                                width: 37.5*fem,
                                height: 37.5*fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // pairpairedSJ4 (51:569)
                          left: 93*fem,
                          top: 84*fem,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup7bqdtfr (LnJBLbjwwz1stdkVa27BqD)
              margin: EdgeInsets.fromLTRB(27*fem, 0*fem, 0*fem, 37*fem),
              width: double.infinity,
              height: 186*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupt2l3pJc (LnJBc1TwSsqAf1dMMgT2L3)
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
                          // autogroupayzhgrc (LnJBjRRFhiavTkktX7AYZH)
                          margin: EdgeInsets.fromLTRB(78.17*fem, 0*fem, 102*fem, 17.17*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // icsharperroroutlineckG (51:313)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.17*fem, 0*fem),
                                width: 41.67*fem,
                                height: 41.67*fem,
                                child: Image.asset(
                                  'assets/page-1/images/ic-sharp-error-outline-U3S.png',
                                  width: 41.67*fem,
                                  height: 41.67*fem,
                                ),
                              ),
                              Container(
                                // heatableissuesj4C (51:312)
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
                          // heatableissuesbuttonqsv (51:338)
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
                    // autogroupjok7WjA (LnJBxR3byJZR2ADnXzJok7)
                    padding: EdgeInsets.fromLTRB(21.5*fem, 21*fem, 21.5*fem, 29*fem),
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
                          // autogroupslv9cGQ (LnJC4zgyPZALtmu4TySLV9)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30.5*fem, 15.44*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // fluenttemperature16regularwZa (51:440)
                                margin: EdgeInsets.fromLTRB(0*fem, 3.13*fem, 11.63*fem, 0*fem),
                                width: 21.88*fem,
                                height: 43.44*fem,
                                child: Image.asset(
                                  'assets/page-1/images/fluent-temperature-16-regular.png',
                                  width: 21.88*fem,
                                  height: 43.44*fem,
                                ),
                              ),
                              Text(
                                // temperature2L8 (51:433)
                                'Temperature',
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
                          // temperaturemHi (51:434)
                          margin: EdgeInsets.fromLTRB(102.5*fem, 0*fem, 95.5*fem, 0*fem),
                          width: double.infinity,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // legend2jS (51:352)
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
              // autogroupfgbdjdr (LnJCVUzApU33L9oyswfgBd)
              margin: EdgeInsets.fromLTRB(393*fem, 0*fem, 311*fem, 0*fem),
              padding: EdgeInsets.fromLTRB(32*fem, 7*fem, 29*fem, 8*fem),
              width: double.infinity,
              height: 90*fem,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xff303e55)),
                color: Color(0xfff7ebda),
                borderRadius: BorderRadius.circular(20*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogrouprx99Qjz (LnJChE9bqAnHzN6V3fRx99)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 0*fem),
                    width: 75*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffb31a23),
                      borderRadius: BorderRadius.circular(37.5*fem),
                    ),
                    child: Center(
                      // mdialphaxXpc (50:229)
                      child: SizedBox(
                        width: 75*fem,
                        height: 75*fem,
                        child: Image.asset(
                          'assets/page-1/images/mdi-alpha-x-BWx.png',
                          width: 75*fem,
                          height: 75*fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // problemrrt (51:355)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 11*fem),
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
                  Container(
                    // autogroupd5ztaH6 (LnJCoJooYfh8JW6oSPD5zT)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(21.46*fem, 27.62*fem, 21.22*fem, 24.3*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xff303e55)),
                      color: Color(0xfff7ebda),
                      borderRadius: BorderRadius.circular(37.5*fem),
                    ),
                    child: Center(
                      // charmtickt2t (51:349)
                      child: SizedBox(
                        width: 32.31*fem,
                        height: 23.08*fem,
                        child: Image.asset(
                          'assets/page-1/images/charm-tick-T3W.png',
                          width: 32.31*fem,
                          height: 23.08*fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // goodbxt (51:356)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}