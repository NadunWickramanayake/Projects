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
        // iphone1414W5y (74:75)
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
              // autogroup8wcvKJK (5NR56iPs39Dj4RfQDy8wCv)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 76*fem),
              padding: EdgeInsets.fromLTRB(0*fem, 11*fem, 15*fem, 11*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff0a294f),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup2smuaV9 (5NR5CxiTKZMvZPZNTn2sMU)
                    margin: EdgeInsets.fromLTRB(0*fem, 15.42*fem, 7*fem, 0*fem),
                    width: 302*fem,
                    height: 47.42*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // screeningthelevelofdepressione (74:78)
                          left: 41*fem,
                          top: 9*fem,
                          child: Align(
                            child: SizedBox(
                              width: 261*fem,
                              height: 20*fem,
                              child: Text(
                                'Screening the level of depression',
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
                          ),
                        ),
                        Positioned(
                          // chevronleft5aK (86:41)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 47.42*fem,
                              height: 47.42*fem,
                              child: Image.asset(
                                'assets/page-1/images/chevron-left-w95.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // img20221225wa00182MXq (74:77)
                    width: 66*fem,
                    height: 66*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250*fem),
                      child: Image.asset(
                        'assets/page-1/images/img-20221225-wa0018-2-gHh.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              // resultsbasedonthequestionnaire (86:42)
              'Results based on the questionnaire',
              textAlign: TextAlign.center,
              style: SafeGoogleFont (
                'Imprint MT Shadow',
                fontSize: 24*ffem,
                fontWeight: FontWeight.w400,
                height: 1.2575*ffem/fem,
                color: Color(0xffffffff),
              ),
            ),
            Container(
              // autogroup1kcnjoH (5NR5mcSiZSXX9E7GM51Kcn)
              padding: EdgeInsets.fromLTRB(27*fem, 43*fem, 29*fem, 59*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupp1cnEEF (5NR5K3Nf34GksXZgrVp1Cn)
                    margin: EdgeInsets.fromLTRB(48*fem, 0*fem, 47*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(25.5*fem, 3*fem, 0.05*fem, 3*fem),
                    width: double.infinity,
                    height: 239*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xff000000)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(119.5*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // goodresponsesrmR (86:48)
                          margin: EdgeInsets.fromLTRB(0*fem, 44*fem, 7.5*fem, 0*fem),
                          constraints: BoxConstraints (
                            maxWidth: 90*fem,
                          ),
                          child: Text(
                            '75 % Good\nResponses',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Imprint MT Shadow',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupxxs2uDu (5NR5STKyHu2WgGhE1vXXS2)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 115*fem),
                          padding: EdgeInsets.fromLTRB(12.5*fem, 58*fem, 13.45*fem, 9*fem),
                          child: Align(
                            // badresponsesAfd (86:49)
                            alignment: Alignment.bottomCenter,
                            child: SizedBox(
                              child: Container(
                                constraints: BoxConstraints (
                                  maxWidth: 90*fem,
                                ),
                                child: Text(
                                  '25 % Bad\nResponses',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont (
                                    'Imprint MT Shadow',
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 29*fem,
                  ),
                  Container(
                    // autogroup9qhczuZ (5NR5aT6eXx63duSYeA9qhc)
                    padding: EdgeInsets.fromLTRB(73*fem, 8*fem, 74*fem, 25*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(45*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // graphreport5AK (86:52)
                          margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 7*fem),
                          width: 50*fem,
                          height: 48*fem,
                          child: Image.asset(
                            'assets/page-1/images/graph-report-R1d.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          // generatethereportmJ3 (86:51)
                          'Generate the report',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'ABeeZee',
                            fontSize: 20*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1825*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 29*fem,
                  ),
                  Container(
                    // autogroupnav6qoh (5NR5fcci8QENRW3mstnav6)
                    width: double.infinity,
                    height: 72*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(45*fem),
                    ),
                    child: Center(
                      child: Text(
                        'Symptoms of Depression',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Acme',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2675*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // rectangle19HQo (77:8)
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