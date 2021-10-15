import 'package:flutter/material.dart';
import 'package:kite_task/DataClasses/journal_data_item.dart';

class JournalListView extends StatelessWidget {
  JournalListView({Key? key}) : super(key: key);

  final List<JournalDataItem> listTransactions = <JournalDataItem>[
    new JournalDataItem(
        id: "",
        description: "INTRO ",
        title: "ACTIVITY",
        dateTime: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 10; i++) {
      listTransactions.add(new JournalDataItem(
          id: '1',
          description: 'SONG',
          title: "MINDFULNESS",
          dateTime: DateTime.now()));
    }
    return Container(
      child: new Stack(
        children: [
          Container(
            color: Colors.black87,
          ),
          ListView.builder(
            itemBuilder: (ctx, index) {
              return Card(
                elevation: 4,
                color: Colors.black45,
                margin: EdgeInsets.only(left: 10, right: 10, top: 8),
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(2.0),
                            child: Image.asset(
                              'assets/images/placeholder.jpeg',
                              fit: BoxFit.cover,
                              height: 80,
                              width: 70,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 0.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(3),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.remove,
                                      color: Colors.blue,
                                      size: 12,
                                    ),
                                    Text(
                                      " 100 ",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: Colors.red,
                                      size: 12,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                    'M&S COLLECTION Block Heel, Mules,\nBlack, Navy, Metallic,\nSizes 3-8 includes half size.',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12))),
                            Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text('Marks & Spencer',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12))),
                            Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text('PKR 5.49',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 12))),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/placeholder.jpeg'),
                                      fit: BoxFit.cover),
                                ),
                                margin: EdgeInsets.only(left: 10),
                                height: 17,
                                width: 17,
                              ),
                              Text(' millarcat ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10)),
                              Icon(Icons.trending_up,
                                  color: Colors.white, size: 13),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Row(
                              children: [
                                Icon(Icons.all_inbox_rounded,
                                    color: Colors.grey, size: 14),
                                Container(
                                    margin: EdgeInsets.only(left: 20, right: 4),
                                    child: Icon(Icons.chat_bubble,
                                        color: Colors.grey, size: 14)),
                                Text(' 0     ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12)),
                                Text(' GET DEAL* ',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 12)),
                                Icon(Icons.mobile_screen_share_outlined,
                                    color: Colors.red, size: 14),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: listTransactions.length,
          ),
        ],
      ),
    );
  }
}
