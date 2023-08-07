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
        // iphone1412gy1 (74:57)
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
              // autogroupzo7qiPu (5NR2jNB46Sj3fdttuizo7Q)
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
                    // chevronleftyaj (86:18)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.08*fem, 0.58*fem),
                    width: 47.42*fem,
                    height: 47.42*fem,
                    child: Image.asset(
                      'assets/page-1/images/chevron-left-aNo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    // resultsofthechatbotfeaturer8j (74:60)
                    margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 6.5*fem, 0*fem),
                    child: Text(
                      'Results of the ChatBot Feature',
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
                    // img20221225wa001825XH (74:59)
                    width: 66*fem,
                    height: 66*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250*fem),
                      child: Image.asset(
                        'assets/page-1/images/img-20221225-wa0018-2-BY7.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupkdkyxqy (5NR3MM96ggVwyzFqinKDKY)
              padding: EdgeInsets.fromLTRB(21*fem, 118*fem, 15*fem, 181*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup1q7c4PD (5NR33reF6KJbPHkKrX1Q7C)
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
                          // beginneriTm (86:24)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                          width: 48*fem,
                          height: 64*fem,
                          child: Image.asset(
                            'assets/page-1/images/beginner.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          // screenthelevelofdepressionzgB (86:27)
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
                    // autogroup7lweTZm (5NR39gorxSNNvBvAUc7LWe)
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
                          // graphreportvTM (86:25)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                          width: 45*fem,
                          height: 58*fem,
                          child: Image.asset(
                            'assets/page-1/images/graph-report-snb.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          // generateareport1jh (86:28)
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
                    // autogroupk5j8V95 (5NR3ErKvYtWhhnXPiLk5j8)
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
                          // download9jR (86:26)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                          width: 48*fem,
                          height: 67*fem,
                          child: Image.asset(
                            'assets/page-1/images/download-mXR.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          // downloadthereport3K1 (86:29)
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
              // rectangle21K1d (77:10)
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