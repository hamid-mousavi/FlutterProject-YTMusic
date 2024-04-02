import 'package:flutter/material.dart';

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
                          padding: const EdgeInsets.only(right: 10),
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
                          left: 45,
                          child: Icon(
                            Icons.play_circle_fill,
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
