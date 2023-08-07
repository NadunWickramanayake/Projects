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
        // iphone144JDq (9:12)
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
              // autogroupeayhJd9 (4eeaMhXqeUuR3terRyeayH)
              padding: EdgeInsets.fromLTRB(90.5*fem, 11*fem, 28*fem, 11*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xff0a294f),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // mindguardCCj (77:4)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 69.5*fem, 0*fem),
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
                    // img20221225wa001835XR (77:5)
                    width: 66*fem,
                    height: 66*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250*fem),
                      child: Image.asset(
                        'assets/page-1/images/img-20221225-wa0018-3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogrouptvd5PY7 (4eeaqrPbZar9bSA8TtTVD5)
              padding: EdgeInsets.fromLTRB(41*fem, 113*fem, 42*fem, 74*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogrouprhshVb9 (4eeaWcSf1ajTY4oGDCRHsh)
                    margin: EdgeInsets.fromLTRB(78*fem, 0*fem, 78*fem, 18*fem),
                    padding: EdgeInsets.fromLTRB(31*fem, 30*fem, 30*fem, 30*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/ellipse-2.png',
                        ),
                      ),
                    ),
                    child: Center(
                      // usermalexzX (9:29)
                      child: SizedBox(
                        width: 90*fem,
                        height: 90*fem,
                        child: Image.asset(
                          'assets/page-1/images/user-male.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // loginbRD (9:32)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 23*fem),
                    child: Text(
                      'Login',
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
                  Container(
                    // usernameEj5 (9:36)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 179*fem, 10*fem),
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
                    // rectangle5JU3 (9:35)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 46*fem),
                    width: double.infinity,
                    height: 51*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(30*fem),
                      color: Color(0xfff5f5f5),
                    ),
                  ),
                  Container(
                    // passwardoQo (9:37)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 191*fem, 11*fem),
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
                    // rectangle4K8F (9:34)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 61*fem),
                    width: double.infinity,
                    height: 51*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(30*fem),
                      color: Color(0xfff5f5f5),
                    ),
                  ),
                  Container(
                    // autogroupaqxkCxj (4eeadwZmyxsXkPyyT5aQxK)
                    margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 26*fem, 0*fem),
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
                        'Log In',
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
          ],
        ),
      ),
          );
  }
}