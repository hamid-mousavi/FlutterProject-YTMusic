import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/row_song_widget.dart';

class DownloadedScreen extends StatelessWidget {
  const DownloadedScreen({super.key});

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
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Center(
                child: SizedBox(
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
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  'آهنگ های بارگیری شده',
                  style: Theme.of(context).textTheme.headlineMedium,
                )),
              ),
            ),
            const SliverToBoxAdapter(
              child: Row(
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
            ),
            const RowSongWidget(),
          ],
        ),
      ),
    );
  }
}
