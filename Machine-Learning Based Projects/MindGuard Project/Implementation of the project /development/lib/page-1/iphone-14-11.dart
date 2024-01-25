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
        // iphone1411Zcw (74:48)
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
              // autogroup2bk6CA7 (5NR1kZUNZV9V25DPJe2bk6)
              padding: EdgeInsets.fromLTRB(7*fem, 11*fem, 15*fem, 11*fem),
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
                    // autogroupn9fpFeB (5NR1qtepirXAzViGPTn9Fp)
                    margin: EdgeInsets.fromLTRB(0*fem, 9*fem, 63*fem, 9.58*fem),
                    width: 239*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // chatbotfeature8hy (86:2)
                          left: 47*fem,
                          top: 10*fem,
                          child: Align(
                            child: SizedBox(
                              width: 192*fem,
                              height: 30*fem,
                              child: Text(
                                'ChatBot Feature',
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
                          // chevronleftxh1 (86:3)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 47.42*fem,
                              height: 47.42*fem,
                              child: Image.asset(
                                'assets/page-1/images/chevron-left-R31.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // img20221225wa00182RqV (74:50)
                    width: 66*fem,
                    height: 66*fem,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250*fem),
                      child: Image.asset(
                        'assets/page-1/images/img-20221225-wa0018-2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup77rrJuH (5NR2Cxt3WxAt6wsJx877rr)
              padding: EdgeInsets.fromLTRB(24*fem, 25*fem, 13*fem, 47*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // autogroupnshcob9 (5NR1xJdoaBtjgHVtUMnshc)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 458*fem),
                    padding: EdgeInsets.fromLTRB(19*fem, 39*fem, 27*fem, 39*fem),
                    width: 247*fem,
                    height: 117*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff132875),
                      borderRadius: BorderRadius.circular(42*fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                      ],
                    ),
                    child: Center(
                      // helloitsexcalliburherehowcanih (86:17)
                      child: SizedBox(
                        child: Container(
                          constraints: BoxConstraints (
                            maxWidth: 201*fem,
                          ),
                          child: Text(
                            'Hello... It’s Excallibur here how can I help you ?',
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
                  ),
                  Container(
                    // autogroupc2qqdib (5NR22JX9CDRWA6sYnUc2qQ)
                    width: double.infinity,
                    height: 43*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupkz1yYqZ (5NR26tDqoTG3norzZQKz1Y)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(261*fem, 6*fem, 19.56*fem, 5.75*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(27*fem),
                          ),
                          child: Align(
                            // iconmicrophone2Qsm (86:9)
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              width: 24.44*fem,
                              height: 31.25*fem,
                              child: Image.asset(
                                'assets/page-1/images/icon-microphone-2.png',
                                width: 24.44*fem,
                                height: 31.25*fem,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // paperplaneUcj (86:13)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                          width: 35*fem,
                          height: 35*fem,
                          child: Image.asset(
                            'assets/page-1/images/paper-plane.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // rectangle22Ycb (77:11)
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