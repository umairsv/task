// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../circle.dart';

class LastElementBottomLine extends StatelessWidget {
  const LastElementBottomLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 1,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 10,
                height: 10,
                child: CustomPaint(
                  painter: CirclePainter(),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            width: 100,
            height: 100,
            child: MaterialButton(
              onPressed: () {},
              child: Image.asset('assets/Mind_Favourite.png'),
              shape: CircleBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
