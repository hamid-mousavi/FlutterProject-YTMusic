import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screen/PlayerScreen.dart';

class RowSongWidget extends StatelessWidget {
  const RowSongWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: listenAgains.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () =>
              Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(
            builder: (context) => PlayerScreen(),
          )),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
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
          ),
        );
      },
    );
  }
}
