import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Covid-19 Tracker",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff009688),
        title: Text("Covid-19 Tracker",
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w600,
          fontSize: 30,
          color: Colors.white
        ),),),
  bottomNavigationBar: CurvedNavigationBar(
    color: Colors.white,
    buttonBackgroundColor: Color(0xff009688),
    backgroundColor: Colors.white,
    animationDuration: Duration(milliseconds: 250),
    height: 70,
    animationCurve: Curves.easeInOut,
    items: <Widget>[
      Icon(Icons.bar_chart, size: 30),
      Icon(Icons.question_answer_rounded,size: 30),
      Icon(Icons.article_rounded, size: 30),
    ],
    onTap: (index) {
      //Handle button tap
    },
  ),
  body: SafeArea(
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 100,
            width: 50,
          )
        ],
      ),
    ))
    );
  }
}