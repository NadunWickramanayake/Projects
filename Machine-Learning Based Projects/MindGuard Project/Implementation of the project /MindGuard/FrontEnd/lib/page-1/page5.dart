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
        // iphone146Ha3 (60:2)
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
              // autogroupwbfrYks (4eedGXrBrdx8ijjghtwbFR)
              padding: EdgeInsets.fromLTRB(16*fem, 11*fem, 15*fem, 11*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff0a294f),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // chevronleftz75 (80:12)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.58*fem, 0.58*fem),
                    width: 47.42*fem,
                    height: 47.42*fem,
                    child: Image.asset(
                      'assets/page-1/images/chevron-left-VA3.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    // mindguardV3q (73:5)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 95*fem, 0*fem),
                    child: Text(
                      'MindGuard',
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
                    // img20221225wa00182yUo (73:4)
                    width: 66*fem,
                    height: 66*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250*fem),
                      child: Image.asset(
                        'assets/page-1/images/img-20221225-wa0018-2-y9D.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup5u39rHh (4eee4vgYvEdNChFuuy5u39)
              padding: EdgeInsets.fromLTRB(14*fem, 21*fem, 21*fem, 121*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // mindfulness8m1 (80:4)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 43*fem),
                    width: 353*fem,
                    height: 192*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(73*fem),
                      child: Image.asset(
                        'assets/page-1/images/mindfulness.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    // autogrouphrh9BzB (4eedV7KZhvrDK5UT74Hrh9)
                    margin: EdgeInsets.fromLTRB(107*fem, 0*fem, 105*fem, 34*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse4sMD (73:8)
                          width: 20*fem,
                          height: 20*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            border: Border.all(color: Color(0xff000000)),
                            color: Color(0xffffffff),
                          ),
                        ),
                        SizedBox(
                          width: 21*fem,
                        ),
                        Container(
                          // ellipse5AbD (73:9)
                          width: 20*fem,
                          height: 20*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            color: Color(0xffffffff),
                          ),
                        ),
                        SizedBox(
                          width: 21*fem,
                        ),
                        Container(
                          // ellipse6tGK (73:10)
                          width: 20*fem,
                          height: 20*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            color: Color(0xffffffff),
                          ),
                        ),
                        SizedBox(
                          width: 21*fem,
                        ),
                        Container(
                          // ellipse7Pis (73:11)
                          width: 20*fem,
                          height: 20*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogrouphjkwXaB (4eedgMVq1suNQp5zjWhjkw)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88*fem, 42.61*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // chevronleftDT1 (80:7)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.61*fem, 0*fem),
                          width: 47.39*fem,
                          height: 47.39*fem,
                          child: Image.asset(
                            'assets/page-1/images/chevron-left-eLb.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          // availableoptions5k7 (79:2)
                          margin: EdgeInsets.fromLTRB(0*fem, 2.61*fem, 0*fem, 0*fem),
                          child: Text(
                            'Available Options',
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
                      ],
                    ),
                  ),
                  Container(
                    // autogroupyf8oxJ7 (4eedorHLZBGooyAMpUyf8o)
                    margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 16*fem, 51*fem),
                    width: double.infinity,
                    height: 92*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(50*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Quick Screening',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupqq6pxBd (4eeduRxNZvVYZdVifwQQ6P)
                    margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 16*fem, 0*fem),
                    width: double.infinity,
                    height: 92*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(50*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Indepth Screening',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 24*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff000000),
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