import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Model/ListenAgain.dart';
import 'package:flutter_application_1/Theme/MyTheme.dart';
import 'package:flutter_application_1/root.dart';

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
        theme: MyAppThemes.lightTheme,
        darkTheme: MyAppThemes.darkTheme,
        themeMode: ThemeMode.dark, // Default mode
        home: const RootScreen(),
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
