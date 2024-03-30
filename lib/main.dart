import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Model/ListenAgain.dart';

import 'Widget/SequareGridView.dart';
import 'Widget/quickc_pick_grid_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Music'),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListView(
              children: [
                SquareGridView(listenAgains, 'Listen Again'),
                QuickcPickGridView(listenAgains, 'Quick ', 'Play All'),
                ListViewHorizental(listenAgains),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<ListenAgain> listenAgains = [
  ListenAgain(
      title: 'لیالی الجروح',
      artistName: 'محمد باقر الخاقانی',
      imageUrl:
          'https://nimboom.zarebin.ir/ava-cover/-18/-4418/-1724954418?zb_svc=ava-prod&zb_dmn=apr&zb_scm=https&zb_pl=0&zb_from=ths&zb_type=internal',
      isPlay: false),
  ListenAgain(
      title: 'لیالی الجروح',
      artistName: 'محمد باقر الخاقانی',
      imageUrl:
          'https://nimboom.zarebin.ir/ava-cover/-18/-4418/-1724954418?zb_svc=ava-prod&zb_dmn=apr&zb_scm=https&zb_pl=0&zb_from=ths&zb_type=internal',
      isPlay: false),
  ListenAgain(
      title: 'لیالی الجروح',
      artistName: 'محمد باقر الخاقانی',
      imageUrl:
          'https://nimboom.zarebin.ir/ava-cover/-18/-4418/-1724954418?zb_svc=ava-prod&zb_dmn=apr&zb_scm=https&zb_pl=0&zb_from=ths&zb_type=internal',
      isPlay: false),
  ListenAgain(
      title: 'لیالی الجروح',
      artistName: 'محمد باقر الخاقانی',
      imageUrl:
          'https://nimboom.zarebin.ir/ava-cover/-18/-4418/-1724954418?zb_svc=ava-prod&zb_dmn=apr&zb_scm=https&zb_pl=0&zb_from=ths&zb_type=internal',
      isPlay: false),
  ListenAgain(
      title: 'لیالی الجروح',
      artistName: 'محمد باقر الخاقانی',
      imageUrl:
          'https://nimboom.zarebin.ir/ava-cover/-18/-4418/-1724954418?zb_svc=ava-prod&zb_dmn=apr&zb_scm=https&zb_pl=0&zb_from=ths&zb_type=internal',
      isPlay: false),
  ListenAgain(
      title: 'لیالی الجروح',
      artistName: 'محمد باقر الخاقانی',
      imageUrl:
          'https://nimboom.zarebin.ir/ava-cover/-18/-4418/-1724954418?zb_svc=ava-prod&zb_dmn=apr&zb_scm=https&zb_pl=0&zb_from=ths&zb_type=internal',
      isPlay: false),
  ListenAgain(
      title: 'لیالی الجروح',
      artistName: 'محمد باقر الخاقانی',
      imageUrl:
          'https://nimboom.zarebin.ir/ava-cover/-18/-4418/-1724954418?zb_svc=ava-prod&zb_dmn=apr&zb_scm=https&zb_pl=0&zb_from=ths&zb_type=internal',
      isPlay: false),
];
