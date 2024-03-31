import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ListViewHorizental(List list, String title, String subTitle) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8, top: 16),
        child: Text(title),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 8, bottom: 4),
        child: Text(subTitle),
      ),
      SizedBox(
        height: 400,
        // width: 400,
        child: PageView.builder(
          padEnds: false,
          controller: PageController(
            viewportFraction: 0.8,
          ),
          physics: BouncingScrollPhysics(),
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 12),
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
