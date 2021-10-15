// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_this, avoid_print

import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            // padding: const EdgeInsets.only(left: 10, right: 10),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/hamburgerIcon.png'),
                    Spacer(),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: GestureDetector(
                            child: Image.asset(
                                'assets/Journal_Slider_Icon_NL.png'),
                            onTap: () {
                              setState(() {
                                this.isSliderViewSelected = true;
                              });
                            },
                          ),
                        ),
                        GestureDetector(
                          child: Image.asset(this.isSliderViewSelected
                              ? 'assets/ListDL.png'
                              : 'assets/ListNL.png'),
                          onTap: () {
                            this.isSliderViewSelected = false;
                            print(this.isSliderViewSelected);
                          },
                        )
                      ],
                    ),
                  ],
                ),
                Text(
                  'Journal',
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
