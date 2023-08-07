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
        // iphone143Ajd (8:3)
        padding: EdgeInsets.fromLTRB(35*fem, 104*fem, 30*fem, 102*fem),
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
              // weprotectyouoverfromdepression (8:6)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 19*fem),
              constraints: BoxConstraints (
                maxWidth: 261*fem,
              ),
              child: Text(
                '“ We protect you over from depression . “',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'Inter',
                  fontSize: 20*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2125*ffem/fem,
                  fontStyle: FontStyle.italic,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // autogroupuxnnxJ7 (5NQxFAKHatnU7tqeuuuxnN)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 65*fem),
              width: double.infinity,
              height: 325*fem,
              child: Stack(
                children: [
                  Positioned(
                    // ellipse146F (8:4)
                    left: 21*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 278*fem,
                        height: 278*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(139*fem),
                            image: DecorationImage (
                              fit: BoxFit.contain,
                              image: AssetImage (
                                'assets/page-1/images/ellipse-1-bg.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // img20221225wa001816od (8:5)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 325*fem,
                        height: 325*fem,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(250*fem),
                          child: Image.asset(
                            'assets/page-1/images/img-20221225-wa0018-1-qrs.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupx7fgwZM (5NQxKaMbdDPeZmwSqkX7fG)
              margin: EdgeInsets.fromLTRB(44*fem, 0*fem, 26*fem, 44*fem),
              width: double.infinity,
              height: 68*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(98.5*fem),
                gradient: LinearGradient (
                  begin: Alignment(-0, -1),
                  end: Alignment(0.004, 0.691),
                  colors: <Color>[Color(0xff1e3c62), Color(0x001e3c62)],
                  stops: <double>[0, 1],
                ),
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
                  'Sign In',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 20*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125*ffem/fem,
                    fontStyle: FontStyle.italic,
                    color: Color(0xfff5f5f5),
                  ),
                ),
              ),
            ),
            Container(
              // autogroupt56j3Vu (5NQxPjuKpA9nERCkzxT56J)
              margin: EdgeInsets.fromLTRB(43*fem, 0*fem, 26*fem, 0*fem),
              width: double.infinity,
              height: 68*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(98.5*fem),
                gradient: LinearGradient (
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[Color(0xff1e3c62), Color(0x001e3c62)],
                  stops: <double>[0, 0.828],
                ),
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
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 20*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125*ffem/fem,
                    fontStyle: FontStyle.italic,
                    color: Color(0xfff5f5f5),
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