import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/iphone-14-2.dart';
// import 'package:myapp/page-1/iphone-14-3.dart';
// import 'package:myapp/page-1/iphone-14-4.dart';
// import 'package:myapp/page-1/iphone-14-5.dart';
// import 'package:myapp/page-1/iphone-14-6.dart';
// import 'package:myapp/page-1/iphone-14-11.dart';
// import 'package:myapp/page-1/iphone-14-12.dart';
// import 'package:myapp/page-1/iphone-14-13.dart';
// import 'package:myapp/page-1/iphone-14-14.dart';
// import 'package:myapp/page-1/iphone-14-15.dart';
// import 'package:myapp/page-1/iphone-14-16.dart';
// import 'package:myapp/page-1/iphone-14-17.dart';
// import 'package:myapp/page-1/iphone-14-10.dart';
// import 'package:myapp/page-1/iphone-14-9.dart';
// import 'package:myapp/page-1/iphone-14-8.dart';
// import 'package:myapp/page-1/iphone-14-7.dart';
// import 'package:myapp/page-1/star-filled.dart';
// import 'package:myapp/page-1/star-filled-ZJB.dart';
// import 'package:myapp/page-1/star-filled-xuy.dart';
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
