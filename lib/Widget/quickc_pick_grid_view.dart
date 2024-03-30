import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget QuickcPickGridView(List list, String title, String textButton) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title),
            ElevatedButton(onPressed: () {}, child: Text(textButton))
          ],
        ),
      ),
      SizedBox(
        height: 220,
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 1,
            childAspectRatio: 0.14,
          ),
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 4),
                  child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(4)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(list[index].imageUrl))),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(list[index].title),
                    Text(list[index].artistName),
                  ],
                ),
                Expanded(child: SizedBox(width: 1)),
                Icon(Icons.more_vert_outlined)
              ],
            );
          },
        ),
      ),
    ],
  );
}
