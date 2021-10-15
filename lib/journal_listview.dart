import 'package:flutter/material.dart';
import 'package:kite_task/DataClasses/journal_data_item.dart';

class JournalListView extends StatelessWidget {
  JournalListView({Key? key}) : super(key: key);

  final List<JournalDataItem> listTransactions = <JournalDataItem>[
    new JournalDataItem(
        id: "",
        description: "ACTIVITY",
        title: "INTRO",
        dateTime: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 10; i++) {
      listTransactions.add(new JournalDataItem(
          id: '1',
          description: 'MINDFULNESS',
          title: "SONG",
          dateTime: DateTime.now()));
    }
    return Container(
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (ctx, index) {
            return Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(children: <Widget>[
                    Card(
                      elevation: 1,
                      color: Colors.white,
                      margin: EdgeInsets.only(right: 30),
                      child: Image.asset(
                        'assets/black.jpeg',
                        height: 90,
                        width: 90,
                      ),
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(listTransactions[index].title,
                              style: TextStyle(color: Colors.black, fontFamily: 'Brandon_reg',)
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 3),
                            child: Text(listTransactions[index].description,
                                style: TextStyle(color: Colors.grey, fontFamily: 'Brandon_light',)),
                          )
                        ]),
                  ]),
                  Container(
                    child: Image.asset(
                      'assets/favourite.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: listTransactions.length,
        ),
      ),
    );
  }
}
