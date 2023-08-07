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
        // iphone149kbm (74:30)
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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // autogroupybuwnHZ (4eerFpsgJmyxkYrPtryBUw)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 565*fem),
              padding: EdgeInsets.fromLTRB(10*fem, 11*fem, 15*fem, 11*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff0a294f),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // chevronleftTuV (83:26)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28.08*fem, 0.58*fem),
                    width: 47.42*fem,
                    height: 47.42*fem,
                    child: Image.asset(
                      'assets/page-1/images/chevron-left-h7R.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    // questionnaireB4o (83:27)
                    margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 57.5*fem, 0*fem),
                    child: Text(
                      'Questionnaire',
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
                    // img20221225wa00182G6F (74:32)
                    width: 66*fem,
                    height: 66*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250*fem),
                      child: Image.asset(
                        'assets/page-1/images/img-20221225-wa0018-2-pPu.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupusmmyFZ (4eerSQQPM47f6yuL8xusMm)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 67*fem),
              width: 219*fem,
              height: 58*fem,
              decoration: BoxDecoration (
                border: Border.all(color: Color(0xfff5f5f5)),
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // learnmore2zX (83:37)
                    left: 31*fem,
                    top: 14*fem,
                    child: Align(
                      child: SizedBox(
                        width: 157*fem,
                        height: 30*fem,
                        child: Text(
                          'LEARN MORE',
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
                  ),
                  Positioned(
                    // rectangle44AzF (83:38)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 219*fem,
                        height: 58*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xfff5f5f5)),
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // learnmoreUV9 (83:39)
                    left: 31*fem,
                    top: 14*fem,
                    child: Align(
                      child: SizedBox(
                        width: 157*fem,
                        height: 30*fem,
                        child: Text(
                          'LEARN MORE',
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
                  ),
                  Positioned(
                    // rectangle45XyD (83:40)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 219*fem,
                        height: 58*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            border: Border.all(color: Color(0xfff5f5f5)),
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // nextpage2QB (83:41)
                    left: 42*fem,
                    top: 14*fem,
                    child: Align(
                      child: SizedBox(
                        width: 135*fem,
                        height: 30*fem,
                        child: Text(
                          'NEXT PAGE',
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
                  ),
                ],
              ),
            ),
            Container(
              // rectangle24fxw (77:13)
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