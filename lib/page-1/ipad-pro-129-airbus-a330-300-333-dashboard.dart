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
        // ipadpro129airbusa330300333dash (1:19)
        width: double.infinity,
        height: 1024*fem,
        decoration: BoxDecoration (
          color: Color(0xfff7ebda),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogroupmzt35KW (LnHzweZci8TDp1sBiBMzt3)
              left: 155*fem,
              top: 195*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(16*fem, 14*fem, 26*fem, 8*fem),
                width: 1057*fem,
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
                      // autogroupgf3hVe8 (LnJ1CJoretjNEgEcBwgF3H)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                      width: 694*fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            // foodiswarmingQm6 (41:641)
                            left: 0*fem,
                            top: 0*fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(23.2*fem, 10*fem, 40*fem, 15.12*fem),
                              width: 352*fem,
                              height: 68*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // makihotspringHZz (39:362)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.2*fem, 0*fem),
                                    width: 41.6*fem,
                                    height: 42.88*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/maki-hot-spring.png',
                                      width: 41.6*fem,
                                      height: 42.88*fem,
                                    ),
                                  ),
                                  Container(
                                    // foodiswarmingnWk (39:364)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.88*fem),
                                    child: Text(
                                      'Food is warming',
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
                          ),
                          Positioned(
                            // foodisheatingtZn (41:642)
                            left: 342*fem,
                            top: 0*fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(27.79*fem, 11.53*fem, 58*fem, 12.08*fem),
                              width: 352*fem,
                              height: 68*fem,
                              decoration: BoxDecoration (
                                borderRadius: BorderRadius.circular(20*fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // gameiconsheathazeyr8 (41:628)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7.4*fem, 0*fem),
                                    width: 32.81*fem,
                                    height: 44.39*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/game-icons-heat-haze-gW4.png',
                                      width: 32.81*fem,
                                      height: 44.39*fem,
                                    ),
                                  ),
                                  Container(
                                    // foodisheating4sa (41:630)
                                    margin: EdgeInsets.fromLTRB(0*fem, 0.55*fem, 0*fem, 0*fem),
                                    child: Text(
                                      'Food is heating',
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
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame1mX6 (42:204)
                      margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 43*fem, 20*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // groupVhz (42:200)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                            width: 40*fem,
                            height: 36*fem,
                            child: Image.asset(
                              'assets/page-1/images/group.png',
                              width: 40*fem,
                              height: 36*fem,
                            ),
                          ),
                          Text(
                            // dangerDP6 (42:199)
                            'Danger',
                            style: SafeGoogleFont (
                              'Raleway',
                              fontSize: 32*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.175*ffem/fem,
                              color: Color(0xffb31a23),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame2YwA (42:212)
                      margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 0*fem, 13*fem),
                      padding: EdgeInsets.fromLTRB(6.1*fem, 0*fem, 0*fem, 0*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // openmojizzzq9a (42:208)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.33*fem, 16.57*fem, 0*fem),
                            width: 35.33*fem,
                            height: 37.67*fem,
                            child: Image.asset(
                              'assets/page-1/images/openmoji-zzz-M6Q.png',
                              width: 35.33*fem,
                              height: 37.67*fem,
                            ),
                          ),
                          Container(
                            // idleL6L (42:205)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            child: Text(
                              'Idle',
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
            ),
            Positioned(
              // autogroupq9cxTAx (LnHzhVJYU7sAwqAimgQ9cX)
              left: 77*fem,
              top: 62*fem,
              child: Container(
                width: 789*fem,
                height: 85*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // materialsymbolsarrowbackrounde (1:20)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 396*fem, 0*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 70*fem,
                          height: 70*fem,
                          child: Image.asset(
                            'assets/page-1/images/material-symbols-arrow-back-rounded-3v8.png',
                            width: 70*fem,
                            height: 70*fem,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // dashboardFcc (55:585)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                      child: Text(
                        'Dashboard',
                        textAlign: TextAlign.right,
                        style: SafeGoogleFont (
                          'Raleway',
                          fontSize: 64*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.175*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupxwfmmL4 (LnJ2P2LMmUHYjH6GoqXWfM)
              left: 139*fem,
              top: 631.5262451172*fem,
              child: Container(
                width: 462*fem,
                height: 48.47*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // autogroupl7qfgC8 (LnJ2hvxXBdwWQzfqNML7QF)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.47*fem, 90*fem, 0*fem),
                      width: 48*fem,
                      height: 48*fem,
                      child: Image.asset(
                        'assets/page-1/images/auto-group-l7qf.png',
                        width: 48*fem,
                        height: 48*fem,
                      ),
                    ),
                    Container(
                      // autogrouptdcpb4C (LnJ2sLrWFVTeTeVCgqTDCP)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 93.2*fem, 0*fem),
                      width: 48*fem,
                      height: 48.47*fem,
                      child: Image.asset(
                        'assets/page-1/images/auto-group-tdcp.png',
                        width: 48*fem,
                        height: 48.47*fem,
                      ),
                    ),
                    Container(
                      // autogroup5xtyJDW (LnJ31LdBVYXBRHEXK55XTy)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 93.2*fem, 0*fem),
                      width: 41.6*fem,
                      height: 44.39*fem,
                      child: Image.asset(
                        'assets/page-1/images/auto-group-5xty.png',
                        width: 41.6*fem,
                        height: 44.39*fem,
                      ),
                    ),
                    Container(
                      // autogroupuqztQnL (LnJ38vEtKJWJQrFiKauqzT)
                      width: 48*fem,
                      height: 48.47*fem,
                      child: Image.asset(
                        'assets/page-1/images/auto-group-uqzt.png',
                        width: 48*fem,
                        height: 48.47*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupamejXc4 (LnJ1fsrFanNKdL86m3aMEj)
              left: 82*fem,
              top: 333*fem,
              child: Container(
                width: 1201*fem,
                height: 73*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // aEWU (41:972)
                      margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 11*fem, 2*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20.67*fem, 10*fem, 14.5*fem, 10*fem),
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
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // gameiconsheathaze5mz (41:973)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.86*fem, 0.44*fem),
                                width: 25.98*fem,
                                height: 35.15*fem,
                                child: Image.asset(
                                  'assets/page-1/images/game-icons-heat-haze.png',
                                  width: 25.98*fem,
                                  height: 35.15*fem,
                                ),
                              ),
                              Text(
                                // aAYY (41:971)
                                '31A',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 32*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // ctUY (41:975)
                      margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 59*fem, 0*fem),
                      padding: EdgeInsets.fromLTRB(15.53*fem, 10*fem, 13*fem, 10*fem),
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // makihotspringxUQ (41:979)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12.53*fem, 4.06*fem),
                            width: 32.93*fem,
                            height: 33.94*fem,
                            child: Image.asset(
                              'assets/page-1/images/maki-hot-spring-3Ha.png',
                              width: 32.93*fem,
                              height: 33.94*fem,
                            ),
                          ),
                          Text(
                            // c4nL (41:978)
                            '31C',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 32*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5*ffem/fem,
                              color: Color(0xfff7ebda),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // dCtY (41:989)
                      margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 10*fem, 2*fem),
                      padding: EdgeInsets.fromLTRB(18.83*fem, 10*fem, 14*fem, 10*fem),
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // openmojizzz5hS (50:279)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.26*fem, 15.2*fem, 0*fem),
                            width: 27.97*fem,
                            height: 29.82*fem,
                            child: Image.asset(
                              'assets/page-1/images/openmoji-zzz.png',
                              width: 27.97*fem,
                              height: 29.82*fem,
                            ),
                          ),
                          Text(
                            // dCXA (41:988)
                            '31D',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 32*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5*ffem/fem,
                              color: Color(0xfff7ebda),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // eYqv (41:998)
                      margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 10*fem, 2*fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom (
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(17.17*fem, 10*fem, 14*fem, 10*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffb31a23),
                            borderRadius: BorderRadius.circular(20*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                offset: Offset(10*fem, 10*fem),
                                blurRadius: 6*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // solardangertrianglelinear1jW (41:1008)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.17*fem, 0*fem),
                                width: 31.67*fem,
                                height: 28.5*fem,
                                child: Image.asset(
                                  'assets/page-1/images/solar-danger-triangle-linear-RQ4.png',
                                  width: 31.67*fem,
                                  height: 28.5*fem,
                                ),
                              ),
                              Text(
                                // eVeg (41:1007)
                                '31E',
                                textAlign: TextAlign.right,
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 32*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xfff7ebda),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // fSZv (41:1013)
                      margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 10*fem, 2*fem),
                      padding: EdgeInsets.fromLTRB(23.17*fem, 10*fem, 17*fem, 10*fem),
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // gameiconsheathaze8he (41:1020)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.86*fem, 0.44*fem),
                            width: 25.98*fem,
                            height: 35.15*fem,
                            child: Image.asset(
                              'assets/page-1/images/game-icons-heat-haze-k3J.png',
                              width: 25.98*fem,
                              height: 35.15*fem,
                            ),
                          ),
                          Text(
                            // fr7r (41:1019)
                            '31F',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 32*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5*ffem/fem,
                              color: Color(0xfff7ebda),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // goHz (41:1022)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 67*fem, 5*fem),
                      padding: EdgeInsets.fromLTRB(15.03*fem, 10*fem, 12.5*fem, 10*fem),
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // makihotspringUuv (41:1023)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.53*fem, 4.06*fem),
                            width: 32.93*fem,
                            height: 33.94*fem,
                            child: Image.asset(
                              'assets/page-1/images/maki-hot-spring-TE8.png',
                              width: 32.93*fem,
                              height: 33.94*fem,
                            ),
                          ),
                          Text(
                            // gbDr (41:1025)
                            '31G',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 32*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5*ffem/fem,
                              color: Color(0xfff7ebda),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // hwHi (42:30)
                      margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 10*fem, 0*fem),
                      padding: EdgeInsets.fromLTRB(15.1*fem, 10*fem, 9*fem, 10*fem),
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // openmojizzzRTn (50:283)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.33*fem, 16.57*fem, 0*fem),
                            width: 35.33*fem,
                            height: 37.67*fem,
                            child: Image.asset(
                              'assets/page-1/images/openmoji-zzz-dzY.png',
                              width: 35.33*fem,
                              height: 37.67*fem,
                            ),
                          ),
                          Text(
                            // hXFv (42:39)
                            '31H',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 32*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5*ffem/fem,
                              color: Color(0xfff7ebda),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // kfd2 (42:40)
                      margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                      padding: EdgeInsets.fromLTRB(17.17*fem, 10*fem, 14*fem, 10*fem),
                      decoration: BoxDecoration (
                        color: Color(0xffb31a23),
                        borderRadius: BorderRadius.circular(20*fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(10*fem, 10*fem),
                            blurRadius: 6*fem,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // solardangertrianglelinear9HJ (42:41)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.17*fem, 0*fem),
                            width: 31.67*fem,
                            height: 28.5*fem,
                            child: Image.asset(
                              'assets/page-1/images/solar-danger-triangle-linear.png',
                              width: 31.67*fem,
                              height: 28.5*fem,
                            ),
                          ),
                          Text(
                            // k4QG (42:46)
                            '31K',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 32*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.5*ffem/fem,
                              color: Color(0xfff7ebda),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // legendoMr (50:232)
              left: 165*fem,
              top: 147*fem,
              child: Align(
                child: SizedBox(
                  width: 115*fem,
                  height: 38*fem,
                  child: Text(
                    'Legend',
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
          );
  }
}