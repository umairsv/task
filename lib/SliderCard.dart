// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SliderCard extends StatefulWidget {
  const SliderCard({Key? key}) : super(key: key);

  @override
  _SliderCardState createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              color: Colors.red,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 2.5,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Intro',
                style: TextStyle(
                  fontFamily: 'Marydale-Regular',
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
