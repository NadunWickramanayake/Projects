import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/page1.dart';
//import 'package:myapp/page-1/page1.dart';
// import 'package:myapp/page-1/page2.dart';
// import 'package:myapp/page-1/page3.dart';
// import 'package:myapp/page-1/page4.dart';
// import 'package:myapp/page-1/page5.dart';
// import 'package:myapp/page-1/page6.dart';
// import 'package:myapp/page-1/page7.dart';
// import 'package:myapp/page-1/page8.dart';
// import 'package:myapp/page-1/page9.dart';
// import 'package:myapp/page-1/page10.dart';
// import 'package:myapp/page-1/page11.dart';
// import 'package:myapp/page-1/page12.dart';
// import 'package:myapp/page-1/page13.dart';
// import 'package:myapp/page-1/page14.dart';
//import 'package:myapp/page-1/page15.dart';
// import 'package:myapp/page-1/star-filled.dart';
// import 'package:myapp/page-1/star-filled-Yif.dart';
//import 'package:myapp/page-1/star-filled-cnP.dart';
// import 'package:myapp/page-1/chatbot.dart';
// import 'package:myapp/page-1/chat-bubble.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: Scene(),
		),
		),
	);
	}
}
