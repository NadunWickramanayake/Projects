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
        // iphone1413nRH (74:66)
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
              // autogroupsuyj36K (4eehzjJe3HFPwqbjo7sUYj)
              padding: EdgeInsets.fromLTRB(7*fem, 11*fem, 15*fem, 11*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff0a294f),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // chevronleft7M5 (86:40)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10.58*fem, 0.58*fem),
                    width: 47.42*fem,
                    height: 47.42*fem,
                    child: Image.asset(
                      'assets/page-1/images/chevron-left-T71.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    // resultsofthequestionnaireB63 (86:39)
                    margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 24*fem, 0*fem),
                    child: Text(
                      'Results of the questionnaire',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        fontStyle: FontStyle.italic,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // img20221225wa00182Frb (74:68)
                    width: 66*fem,
                    height: 66*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250*fem),
                      child: Image.asset(
                        'assets/page-1/images/img-20221225-wa0018-2-oRM.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupkrvuma3 (4eeijHv43mdE8odxYAKRVu)
              padding: EdgeInsets.fromLTRB(21*fem, 116*fem, 15*fem, 183*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupdjztVF9 (4eeiDJn1ta9UYBLWCHDjzT)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 66*fem),
                    padding: EdgeInsets.fromLTRB(26*fem, 9*fem, 33*fem, 10*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(37*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // beginneraXV (86:34)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                          width: 48*fem,
                          height: 64*fem,
                          child: Image.asset(
                            'assets/page-1/images/beginner-TMm.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          // screenthelevelofdepressionQmR (86:31)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                          child: Text(
                            'Screen the level of depression',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              fontStyle: FontStyle.italic,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupverrhVd (4eeiPdp95US87NYxfkVERR)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 76*fem),
                    padding: EdgeInsets.fromLTRB(29*fem, 16*fem, 131*fem, 9*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(37*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // graphreport9Md (86:35)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                          width: 45*fem,
                          height: 58*fem,
                          child: Image.asset(
                            'assets/page-1/images/graph-report-iNF.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          // generateareportGBM (86:37)
                          margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 0*fem),
                          child: Text(
                            'Generate a report',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              fontStyle: FontStyle.italic,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupuys7jKq (4eeiY3jnjpa5352QuhuYS7)
                    padding: EdgeInsets.fromLTRB(26*fem, 8*fem, 109*fem, 8*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(37*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // downloadPfH (86:36)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                          width: 48*fem,
                          height: 67*fem,
                          child: Image.asset(
                            'assets/page-1/images/download.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          // downloadthereport7bH (86:38)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                          child: Text(
                            'Download the report',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125*ffem/fem,
                              fontStyle: FontStyle.italic,
                              color: Color(0xff000000),
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
              // rectangle20cnw (77:9)
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