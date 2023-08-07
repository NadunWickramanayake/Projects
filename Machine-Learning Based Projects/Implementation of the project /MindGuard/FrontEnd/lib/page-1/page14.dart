import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iphone1415TPR (74:84)
        width: double.infinity,
        decoration: BoxDecoration (
          borderRadius: BorderRadius.circular(10*fem),
          gradient: LinearGradient (
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xff1f3d61), Color(0xff03152c)],
            stops: <double>[0.173, 1],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup9fxytzX (4eemadLELeqGtK263E9fXy)
              padding: EdgeInsets.fromLTRB(80.5*fem, 11*fem, 15*fem, 11*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff0a294f),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // mindguardPwH (74:87)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 92.5*fem, 0*fem),
                    child: Text(
                      'MindGuard ',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        fontStyle: FontStyle.italic,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // img20221225wa001823F9 (74:86)
                    width: 66*fem,
                    height: 66*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250*fem),
                      child: Image.asset(
                        'assets/page-1/images/img-20221225-wa0018-2-fNs.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup2uqdk9Z (4een9rsrZkJed3BmPL2uqd)
              padding: EdgeInsets.fromLTRB(23.5*fem, 37*fem, 12*fem, 28*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupgml7riP (4eemk3EDQWMQvxqTMiGmL7)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 15*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // nameBVm (77:41)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15.5*fem, 0*fem),
                          child: Text(
                            'Name:',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // rectangle30Hoh (77:43)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          width: 262*fem,
                          height: 24*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            border: Border.all(color: Color(0xffeba115)),
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupv55uano (4eemtsJqV9Zmpj33DPV55u)
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // agerEX (77:42)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                          child: Text(
                            'Age:',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Container(
                          // rectangle31jp7 (77:44)
                          width: 262*fem,
                          height: 24*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            border: Border.all(color: Color(0xffeba115)),
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // line1P7y (77:45)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 37*fem),
              width: double.infinity,
              height: 1*fem,
              decoration: BoxDecoration (
                color: Color(0xffeba115),
              ),
            ),
            Container(
              // choosentypetoscreenthelevelofd (86:55)
              margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 0*fem),
              child: Text(
                'Choosen type to screen the level of Depression',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Acme',
                  fontSize: 20*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2675*ffem/fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // autogrouphytbBJj (4eenR27GDGGtcBE9QMhYtb)
              padding: EdgeInsets.fromLTRB(39*fem, 47.01*fem, 27*fem, 100*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // line4HsZ (86:56)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 62.99*fem),
                    width: 312*fem,
                    height: 1*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffeba115),
                    ),
                  ),
                  Container(
                    // answeredquestiontypeskm9 (86:58)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 81*fem),
                    child: Text(
                      'Answered  question types ',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Acme',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2675*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // line5pm1 (86:57)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 63*fem),
                    width: 312*fem,
                    height: 1*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffeba115),
                    ),
                  ),
                  Container(
                    // currentlevelofdepression9oH (86:59)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 77*fem),
                    child: Text(
                      'Current level of depression',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Acme',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2675*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // line6rhh (86:60)
                    margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 0*fem, 0*fem),
                    width: 312*fem,
                    height: 1*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffeba115),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // rectangle18y1d (77:7)
              width: 401*fem,
              height: 66*fem,
              decoration: BoxDecoration (
                color: Color(0xffd9d9d9),
              ),
            ),
          ],
        ),
      ),
          );
  }
}