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
        // iphone142Hud (1:45)
        padding: EdgeInsets.fromLTRB(35*fem, 172*fem, 36*fem, 137*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
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
              // autogroupgwjm1Mm (DugCPC9reoUwGt9UWxGWjm)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45*fem),
              width: double.infinity,
              height: 319*fem,
              child: Stack(
                children: [
                  Positioned(
                    // ellipse18qh (1:46)
                    left: 21*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 278*fem,
                        height: 278*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(139*fem),
                            image: const DecorationImage (
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
                    // img20221225wa00181Lwm (1:47)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 319*fem,
                        height: 319*fem,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(250*fem),
                          child: Image.asset(
                            'assets/page-1/images/img-20221225-wa0018-1.png',
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
              // weprotectyouoverfromdepression (1:48)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 54*fem),
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
              // autogroupcnbvmvb (DugCbmdEW6P1sDtEv7cnBV)
              margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 40*fem, 0*fem),
              width: double.infinity,
              height: 68*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(98.5*fem),
                gradient: const LinearGradient (
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
                  'Next',
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
            ),
          ],
        ),
      ),
          );
  }
}