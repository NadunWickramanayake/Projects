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
        // iphone1488hR (74:21)
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
              // autogrouphlo5o2s (4eesHxp9C6Aq8dLxRiHLo5)
              padding: EdgeInsets.fromLTRB(20*fem, 11*fem, 15*fem, 11*fem),
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
                    // autogroupzzcj2gK (4eesXsadaiuqDaCwbaZzcj)
                    margin: EdgeInsets.fromLTRB(0*fem, 9*fem, 2.58*fem, 9.58*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      image: DecorationImage (
                        fit: BoxFit.contain,
                        image: AssetImage (
                          'assets/page-1/images/chevron-left-bg.png',
                        ),
                      ),
                    ),
                    child: Center(
                      // chevronleftuk7 (83:28)
                      child: SizedBox(
                        width: 47.42*fem,
                        height: 47.42*fem,
                        child: Image.asset(
                          'assets/page-1/images/chevron-left-CGj.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupfw2bqNs (4eesdhkFSqyckUNnDffw2B)
                    margin: EdgeInsets.fromLTRB(0*fem, 19*fem, 23*fem, 17*fem),
                    width: 216*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // indepthscreeningkkj (81:16)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 216*fem,
                              height: 30*fem,
                              child: Text(
                                'Indepth Screening',
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
                        Positioned(
                          // indepthscreening2TM (83:29)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 216*fem,
                              height: 30*fem,
                              child: Text(
                                'Indepth Screening',
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
                    // img20221225wa00182sTy (74:23)
                    width: 66*fem,
                    height: 66*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250*fem),
                      child: Image.asset(
                        'assets/page-1/images/img-20221225-wa0018-2-b47.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupbyf18Pu (4eetrfi1Dp9EGDkkmFbyf1)
              padding: EdgeInsets.fromLTRB(34*fem, 46*fem, 31*fem, 48*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup7qrzqZD (4eesqhQGJvZvBvVmA27QRZ)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 46*fem),
                    padding: EdgeInsets.fromLTRB(29*fem, 7*fem, 13*fem, 8*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(54*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // searchVdm (83:4)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 154*fem, 0*fem),
                          child: Text(
                            'Search',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 24*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125*ffem/fem,
                              color: Color(0xff565b60),
                            ),
                          ),
                        ),
                        Container(
                          // searchoPZ (83:3)
                          width: 46*fem,
                          height: 46*fem,
                          child: Image.asset(
                            'assets/page-1/images/search.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupatejjY7 (4eet5GqyZirBuDaSdiATej)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 41*fem),
                    padding: EdgeInsets.fromLTRB(42*fem, 29*fem, 25.5*fem, 31*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(55*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // chatmessagesentzD9 (83:8)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.5*fem, 0*fem),
                          width: 58*fem,
                          height: 52*fem,
                          child: Image.asset(
                            'assets/page-1/images/chat-message-sent-Pas.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          // questionnaireJUj (83:11)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                          child: Text(
                            'Questionnaire',
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
                      ],
                    ),
                  ),
                  Container(
                    // autogroupfyapNzP (4eetGmWpj3kPnC2U2oFYAP)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 40*fem),
                    padding: EdgeInsets.fromLTRB(36*fem, 23*fem, 95*fem, 23*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(55*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // chatbotSDZ (83:12)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                          width: 64*fem,
                          height: 66*fem,
                          child: Image.asset(
                            'assets/page-1/images/chatbot.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          // chatbotkk3 (83:13)
                          margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 0*fem),
                          child: Text(
                            'ChatBot',
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
                      ],
                    ),
                  ),
                  Container(
                    // autogroupqej7e4j (4eetSvtZM2ogAZMGfBQEJ7)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 17*fem, 80*fem),
                    padding: EdgeInsets.fromLTRB(52*fem, 32*fem, 25.26*fem, 19.26*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(55*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // formoreinforH7h (83:15)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 10.74*fem),
                          child: Text(
                            'For More Infor',
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
                        Container(
                          // chevronleftxUj (83:14)
                          width: 60.74*fem,
                          height: 60.74*fem,
                          child: Image.asset(
                            'assets/page-1/images/chevron-left-doh.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroup5jesHmu (4eetcRcjhLwVod7TuD5jEs)
                    margin: EdgeInsets.fromLTRB(106*fem, 0*fem, 0*fem, 0*fem),
                    width: 219*fem,
                    height: 58*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xfff5f5f5)),
                      color: Color(0xffffffff),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // learnmorenCs (83:25)
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
                          // rectangle4238o (83:34)
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
                          // learnmorehDM (83:35)
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
                          // rectangle41b3q (83:32)
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
                          // learnmoreTLw (83:33)
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
                      ],
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