import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Theme/MyTheme.dart';
import 'package:flutter_application_1/Widget/SequareGridView.dart';
import 'package:flutter_application_1/Widget/category_widget.dart';
import 'package:flutter_application_1/Widget/list_view_horizental.dart';
import 'package:flutter_application_1/Widget/quickc_pick_grid_view.dart';
import 'package:flutter_application_1/main.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Music'),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20)),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const CategoryWidget(),
              QuickPickGridView(
                  list: listenAgains,
                  title: AppThemString.quick,
                  textButton: AppThemString.playAll,
                  themeData: themeData),
              ListViewHorizental(listenAgains, AppThemString.news,
                  AppThemString.startRadioFromASong, themeData),
              SquareGridView(listenAgains, AppThemString.listenAgain),
            ],
          ),
        ),
      ),
    );
  }
}
