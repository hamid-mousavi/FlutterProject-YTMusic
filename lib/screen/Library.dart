import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Widget/category_widget.dart';
import 'package:flutter_application_1/Widget/row_song_widget.dart';

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

class DownloadedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'فهرست پخش . 4 آهنگ',
            style: TextStyle(fontSize: 10),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(CupertinoIcons.search),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                height: (MediaQuery.of(context).size.width - 40) / 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                      fit: BoxFit.fill,
                      'https://webahang.ir/wp-content/uploads/2023/08/Mohammadbagher-Al-Khaghani041.jpg'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'آهنگ های بارگیری شده',
                style: Theme.of(context).textTheme.headlineMedium,
              )),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.play_circle_fill,
                  size: 70,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(CupertinoIcons.ellipsis_vertical)
              ],
            ),
            const RowSongWidget(),
          ],
        )),
      ),
    );
  }
}
