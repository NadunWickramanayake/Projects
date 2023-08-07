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
        // iphone145aUj (9:20)
        padding: EdgeInsets.fromLTRB(11*fem, 43*fem, 21*fem, 40*fem),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // autogroupkmpwxEP (4eecM4PHg2ysogsE2aKMpw)
              margin: EdgeInsets.fromLTRB(36*fem, 0*fem, 105*fem, 8*fem),
              width: double.infinity,
              height: 87*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupu3xfrqZ (4eecXDm2J23AC4C2exU3xf)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(18*fem, 17*fem, 17*fem, 17*fem),
                    height: double.infinity,
                    decoration: BoxDecoration (
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/ellipse-3.png',
                        ),
                      ),
                    ),
                    child: Center(
                      // usermaleKj9 (9:40)
                      child: SizedBox(
                        width: 53*fem,
                        height: 53*fem,
                        child: Image.asset(
                          'assets/page-1/images/user-male-tBd.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // registerbRm (9:38)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                    child: Text(
                      'Register',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 24*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xffeba115),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // fullnamersV (9:41)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
              width: double.infinity,
              child: Text(
                'Full Name',
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
              // rectangle6vsM (9:42)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
              width: 307*fem,
              height: 51*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
                color: Color(0xfff5f5f5),
              ),
            ),
            Container(
              // dateofbirthqUX (9:43)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
              width: double.infinity,
              child: Text(
                'Date of Birth',
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
              // rectangle7jK1 (9:44)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
              width: 307*fem,
              height: 51*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
                color: Color(0xfff5f5f5),
              ),
            ),
            Container(
              // ageSjD (9:45)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
              width: double.infinity,
              child: Text(
                'Age',
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
              // rectangle8vPV (9:46)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
              width: 307*fem,
              height: 51*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
                color: Color(0xfff5f5f5),
              ),
            ),
            Container(
              // mobilenumberoiB (9:47)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
              width: double.infinity,
              child: Text(
                'Mobile Number',
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
              // rectangle9si3 (9:48)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
              width: 307*fem,
              height: 51*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
                color: Color(0xfff5f5f5),
              ),
            ),
            Container(
              // username7sH (9:49)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
              width: double.infinity,
              child: Text(
                'User Name',
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
              // rectangle10cJF (9:50)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
              width: 307*fem,
              height: 51*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
                color: Color(0xfff5f5f5),
              ),
            ),
            Container(
              // passwardj7y (9:51)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
              width: double.infinity,
              child: Text(
                'Passward',
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
              // rectangle11dz3 (9:52)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 41*fem),
              width: 307*fem,
              height: 51*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(30*fem),
                color: Color(0xfff5f5f5),
              ),
            ),
            Container(
              // autogroupxy5dADH (4eecf8hWFcV1ZGzXMeXy5d)
              margin: EdgeInsets.fromLTRB(171*fem, 0*fem, 0*fem, 0*fem),
              width: 187*fem,
              height: 39*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(35*fem),
                gradient: LinearGradient (
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[Color(0xff1e3c62), Color(0x001e3c62)],
                  stops: <double>[0, 1],
                ),
              ),
              child: Center(
                child: Text(
                  'REGISTER',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 20*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125*ffem/fem,
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