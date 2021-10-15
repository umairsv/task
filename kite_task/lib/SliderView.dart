// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'SliderCard.dart';

class SliderView extends StatefulWidget {
  const SliderView({Key? key}) : super(key: key);

  @override
  _SliderViewState createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
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
                fontFamily: 'Brandon_Light',
                fontSize: 20,
              ),
            ),
            SliderCard(),
          ],
        ),
      ],
    );
  }
}
