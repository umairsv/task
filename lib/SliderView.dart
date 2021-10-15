// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kite_task/BottomLines/FirstElementBottomLine.dart';
import 'package:kite_task/BottomLines/LastElementBottomLine.dart';
import 'package:kite_task/BottomLines/MiddleElementBottomLine.dart';

import 'BottomLines/LastElementBottomLine.dart';
import 'BottomLines/MiddleElementBottomLine.dart';
import 'SliderCard.dart';

class SliderView extends StatefulWidget {
  int firstIndex = 0;
  int lastIndex = 0;
  SliderView({Key? key, required this.firstIndex, required this.lastIndex})
      : super(key: key);

  @override
  _SliderViewState createState() => _SliderViewState(firstIndex, lastIndex);
}

class _SliderViewState extends State<SliderView> {
  int locFIndex = 0;
  int localSecondIndex = 0;
  _SliderViewState(this.locFIndex, this.localSecondIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/Kite_Logo.png',
              height: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'M I N D F U L N E S S',
              style: TextStyle(
                fontFamily: 'Brandon_light',
                fontSize: 20,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 8,
              ),
            ],
          ),
          child: SliderCard(),
        ),
        Spacer(),
        lastIndexHandling(locFIndex, localSecondIndex),
      ],
    );
  }

  lastIndexHandling(int fIndex, int lIndex) {
    if (fIndex == 0) {
      print(fIndex);
      return FirstElementButtomLine();
    } else if (fIndex == lIndex) {
      return LastElementBottomLine();
    } else {
      return MiddleElementBottomLine();
    }
  }
}
