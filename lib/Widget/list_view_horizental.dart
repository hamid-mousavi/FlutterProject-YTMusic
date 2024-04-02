import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Theme/MyTheme.dart';

Widget ListViewHorizental(
    List list, String title, String subTitle, ThemeData themeData) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 16, left: 12, right: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              subTitle,
              style: themeData.textTheme.labelSmall,
            ),
            Container(
              height: 20,
              width: 55,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                  top: BorderSide(color: Colors.grey),
                  left: BorderSide(color: Colors.grey),
                  right: BorderSide(color: Colors.grey),
                ),
              ),
              child: Center(
                child: Text(
                  AppThemString.playAll,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 4),
        child: Text(
          title,
          style: themeData.textTheme.titleLarge,
        ),
      ),
      SizedBox(
        height: 300,
        // width: 400,
        child: PageView.builder(
          padEnds: false,
          controller: PageController(
            viewportFraction: 0.8,
          ),
          physics: const BouncingScrollPhysics(),
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.width / 2,
                        width: MediaQuery.of(context).size.width - 10,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(
                            list[index].imageUrl,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 140,
                        top: 100,
                        child: Icon(
                          CupertinoIcons.play_circle,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                  Text(list[index].title),
                  Text(list[index].artistName),
                ],
              ),
            );
          },
        ),
      ),
    ],
  );
}
