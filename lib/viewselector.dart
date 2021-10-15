import 'package:flutter/material.dart';
import 'package:kite_task/CarouselView.dart';

import 'SliderView.dart';
import 'journal_listview.dart';

class ViewSelector extends StatelessWidget {
  bool selectorstatus = false;

  ViewSelector({Key? key, required this.selectorstatus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (selectorstatus) {
      return JournalListView();
    } else {
      return CarouselView();
    }
  }
}
