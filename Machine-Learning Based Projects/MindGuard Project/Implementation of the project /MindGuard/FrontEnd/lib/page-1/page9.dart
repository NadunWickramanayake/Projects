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
        // iphone1410oFy (74:39)
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
              // autogroup9fjtNyH (4eeqW1oM3QNtfPdnJf9FJT)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 554*fem),
              padding: EdgeInsets.fromLTRB(0*fem, 11*fem, 16*fem, 11*fem),
              width: double.infinity,
              height: 88*fem,
              decoration: BoxDecoration (
                color: Color(0xff0a294f),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupsm1uEVh (4eeqeG4c8qHUQGDahXSm1u)
                    margin: EdgeInsets.fromLTRB(0*fem, 9*fem, 0*fem, 9.58*fem),
                    width: 314*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // chevronleftw9D (83:30)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 47.42*fem,
                              height: 47.42*fem,
                              child: Image.asset(
                                'assets/page-1/images/chevron-left-Tp7.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // continuequestionnaireqEb (83:31)
                          left: 28*fem,
                          top: 10*fem,
                          child: Align(
                            child: SizedBox(
                              width: 280*fem,
                              height: 30*fem,
                              child: Text(
                                'Continue Questionnaire',
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // img20221225wa00182TFy (74:41)
                    width: 66*fem,
                    height: 66*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250*fem),
                      child: Image.asset(
                        'assets/page-1/images/img-20221225-wa0018-2-MEs.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupvfhmtMH (4eeqpAwkuSVi1PhuZGvFhm)
              margin: EdgeInsets.fromLTRB(71*fem, 0*fem, 49*fem, 68*fem),
              width: double.infinity,
              height: 68*fem,
              decoration: BoxDecoration (
                color: Color(0xffd9d9d9),
                borderRadius: BorderRadius.circular(77*fem),
              ),
              child: Center(
                child: Text(
                  'CHECK THE RESULT',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 24*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125*ffem/fem,
                    fontStyle: FontStyle.italic,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // rectangle23ir7 (77:12)
              width: double.infinity,
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