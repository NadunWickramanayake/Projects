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
        // iphone1467iT (60:2)
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
              // autogroup4ektkFd (5NQzQS3tP45AUpYMNG4EKt)
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
                    // chevronleftojh (80:12)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.58*fem, 0.58*fem),
                    width: 47.42*fem,
                    height: 47.42*fem,
                    child: Image.asset(
                      'assets/page-1/images/chevron-left-Tt7.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    // mindguardVMd (73:5)
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
                    // img20221225wa00182ZMV (73:4)
                    width: 66*fem,
                    height: 66*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250*fem),
                      child: Image.asset(
                        'assets/page-1/images/img-20221225-wa0018-2-EnP.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup4gvnqpo (5NQzyqFuB4muQNbgZT4Gvn)
              padding: EdgeInsets.fromLTRB(14*fem, 21*fem, 21*fem, 121*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // mindfulnessjQP (80:4)
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
                    // autogroupjjgeBXH (5NQzZvn4jNCz7tJYcHjjGe)
                    margin: EdgeInsets.fromLTRB(107*fem, 0*fem, 105*fem, 34*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // ellipse4Tjh (73:8)
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
                          // ellipse5kD1 (73:9)
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
                          // ellipse63T1 (73:10)
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
                          // ellipse78zF (73:11)
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
                    // autogroupn3yerQT (5NQzhvYjyRGX5X3sEXN3YE)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88*fem, 42.61*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // chevronleftkEw (80:7)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.61*fem, 0*fem),
                          width: 47.39*fem,
                          height: 47.39*fem,
                          child: Image.asset(
                            'assets/page-1/images/chevron-left-Db9.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          // availableoptions2iF (79:2)
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
                    // autogroupeprz6TD (5NQznb5ds7ikJdz8vzePrz)
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
                    // autogroup7a74HGo (5NQzr5yonPZRDygqhr7A74)
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