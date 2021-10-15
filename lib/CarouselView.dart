// ignore_for_file: file_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'SliderView.dart';

class CarouselView extends StatefulWidget {
  const CarouselView({Key? key}) : super(key: key);

  @override
  _CarouselViewState createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  @override
  Widget build(BuildContext context) {
    List<int> list = <int>[0, 1, 2, 3, 4];

    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height / 1.3,
        viewportFraction: 1,
        enableInfiniteScroll: false,
      ),
      items: list.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: SliderView(
                firstIndex: i,
                lastIndex: list.length - 1,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
