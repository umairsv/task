// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_this, avoid_print

import 'package:flutter/material.dart';
import 'package:kite_task/SliderView.dart';
import 'package:kite_task/journal_listview.dart';
import 'package:kite_task/viewselector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSliderViewSelected = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: new Stack(
            children: [
              Image(
                image: AssetImage('assets/Background.png'),
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/hamburgerIcon.png'),
                          Row(
                            children: [
                              GestureDetector(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    this.isSliderViewSelected
                                        ? 'assets/Journal_Slider_Icon_NL.png'
                                        : 'assets/Journal_Slider_Icon_DL.png',
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    this.isSliderViewSelected = false;
                                  });
                                },
                              ),
                              GestureDetector(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Image.asset(this.isSliderViewSelected
                                      ? 'assets/ListDL.png'
                                      : 'assets/ListNL.png'),
                                ),
                                onTap: () {
                                  setState(() {
                                    this.isSliderViewSelected = true;
                                  });
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Journal',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Lust',
                        fontSize: 40,
                      ),
                    ),
                    SizedBox(height: 20),
                    ViewSelector(selectorstatus: this.isSliderViewSelected)
                  ],
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}