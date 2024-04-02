import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Widget/category_widget.dart';
import 'package:flutter_application_1/Widget/row_song_widget.dart';

import 'downloaded_screen.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('کتابخانه'),
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.settings_solid),
                    SizedBox(width: 20),
                    Icon(CupertinoIcons.search),
                  ],
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const CategoryWidget(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('فعالیت های اخیر'),
                    Icon(CupertinoIcons.square_grid_2x2)
                  ],
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DownloadedScreen(),
                  )),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.network(
                            'https://webahang.ir/wp-content/uploads/2023/08/Mohammadbagher-Al-Khaghani041.jpg'),
                      ),
                      const SizedBox(width: 10),
                      const Text('آهنگ های بارگیری شده'),
                      const Expanded(child: SizedBox()),
                      const Icon(CupertinoIcons.ellipsis_vertical)
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
