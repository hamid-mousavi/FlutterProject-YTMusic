import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget SquareGridView(List list, String title) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(12),
        child: Text(title),
      ),
      SizedBox(
        height: 300,
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 0, childAspectRatio: 1.3),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SizedBox(
                            height: 104,
                            width: 104,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.network(
                                list[index].imageUrl,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 35,
                          left: 35,
                          child: Icon(
                            Icons.play_circle_fill_sharp,
                            size: 35,
                          ),
                        )
                      ],
                    ),
                    Text(
                      list[index].title,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      list[index].artistName,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    ],
  );
}

Widget ListViewHorizental(List list) {
  return SizedBox(
    height: 400,
    child: ListView.builder(
      itemCount: list.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 256,
                height: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.network(
                    list[index].imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(list[index].title),
              Text(list[index].artistName),
            ],
          ),
        );
      },
    ),
  );
}
