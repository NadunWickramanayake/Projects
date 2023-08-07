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
        // iphone1416LpB (74:93)
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
              // autogroupxqliMzB (5NR7aovRy1YhWezqKHXQLi)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
              padding: EdgeInsets.fromLTRB(64.5*fem, 11*fem, 15*fem, 11*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff0a294f),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // mindguardbdd (74:96)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 108.5*fem, 0*fem),
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
                    // img20221225wa00182ebu (74:95)
                    width: 66*fem,
                    height: 66*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250*fem),
                      child: Image.asset(
                        'assets/page-1/images/img-20221225-wa0018-2-oXy.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // pleasedownloadyourscreeningrep (77:23)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
              constraints: BoxConstraints (
                maxWidth: 258*fem,
              ),
              child: Text(
                'Please download your screening report ',
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
              // autogroupxkj6o7R (5NR7zt4eydLyyyBd7XxkJ6)
              padding: EdgeInsets.fromLTRB(7.5*fem, 15*fem, 6.5*fem, 74*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup6xw8HYP (5NR7hJjc6oXwnrjHKj6Xw8)
                    margin: EdgeInsets.fromLTRB(16.5*fem, 0*fem, 21.5*fem, 33*fem),
                    width: double.infinity,
                    height: 72*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle14a1h (74:97)
                          left: 0*fem,
                          top: 1*fem,
                          child: Align(
                            child: SizedBox(
                              width: 338*fem,
                              height: 71*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(19*fem),
                                  color: Color(0xff03152c),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // icons8download301pAw (77:39)
                          left: 45*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 50*fem,
                              height: 64*fem,
                              child: Image.asset(
                                'assets/page-1/images/icons8-download-30-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // downloadVH5 (77:40)
                          left: 121.5*fem,
                          top: 13*fem,
                          child: Align(
                            child: SizedBox(
                              width: 172*fem,
                              height: 43*fem,
                              child: Text(
                                'Download',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 35*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.2125*ffem/fem,
                                  fontStyle: FontStyle.italic,
                                  color: Color(0xffeba115),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupculav7V (5NR7o8uDxvbjKku7wpCULa)
                    margin: EdgeInsets.fromLTRB(42.5*fem, 0*fem, 48.5*fem, 41*fem),
                    padding: EdgeInsets.fromLTRB(36*fem, 14*fem, 31*fem, 12*fem),
                    width: double.infinity,
                    height: 85*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xff000000)),
                      color: Color(0xf7eba115),
                      borderRadius: BorderRadius.circular(50*fem),
                    ),
                    child: Center(
                      // callanemergencycontactnumbermt (77:19)
                      child: SizedBox(
                        child: Container(
                          constraints: BoxConstraints (
                            maxWidth: 218*fem,
                          ),
                          child: Text(
                            'Call an Emergency contact number',
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
                  ),
                  Container(
                    // wewouldliketosuggestthefollowi (77:14)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 34*fem),
                    constraints: BoxConstraints (
                      maxWidth: 376*fem,
                    ),
                    child: Text(
                      'We would like to suggest the following activities to make you feel better  ',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // rectangle25FBh (77:16)
                    margin: EdgeInsets.fromLTRB(6.5*fem, 0*fem, 11.5*fem, 22*fem),
                    width: double.infinity,
                    height: 30*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(19*fem),
                      border: Border.all(color: Color(0xffeba115)),
                      color: Color(0xffffffff),
                    ),
                  ),
                  Container(
                    // rectangle26Xuu (77:17)
                    margin: EdgeInsets.fromLTRB(6.5*fem, 0*fem, 11.5*fem, 22*fem),
                    width: double.infinity,
                    height: 30*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(19*fem),
                      border: Border.all(color: Color(0xffeba115)),
                      color: Color(0xffffffff),
                    ),
                  ),
                  Container(
                    // rectangle27E3d (77:18)
                    margin: EdgeInsets.fromLTRB(6.5*fem, 0*fem, 11.5*fem, 33*fem),
                    width: double.infinity,
                    height: 30*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(19*fem),
                      border: Border.all(color: Color(0xffeba115)),
                      color: Color(0xffffffff),
                    ),
                  ),
                  Container(
                    // autogroupgpve8Pu (5NR7sPH9SKyYap7G2ZgpvE)
                    margin: EdgeInsets.fromLTRB(61.5*fem, 0*fem, 61.5*fem, 0*fem),
                    width: double.infinity,
                    height: 43*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xf7eba115)),
                      color: Color(0xff03152c),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Center(
                      child: Text(
                        'learn more',
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
                ],
              ),
            ),
            Container(
              // rectangle17Xgw (77:6)
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