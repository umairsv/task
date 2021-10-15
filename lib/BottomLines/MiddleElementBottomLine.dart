// ignore_for_file: file_names, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../circle.dart';

class MiddleElementBottomLine extends StatelessWidget {
  const MiddleElementBottomLine({Key? key}) : super(key: key);

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
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            width: 80,
            height: 80,
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
