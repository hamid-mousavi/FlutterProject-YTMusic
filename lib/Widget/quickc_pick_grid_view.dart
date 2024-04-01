import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget QuickcPickGridView(
    List list, String title, String textButton, ThemeData themeData) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: themeData.textTheme.headlineSmall,
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
                  textButton,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 240,
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.156,
            crossAxisSpacing: 2,
          ),
          itemBuilder: (context, index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                    bottom: 8,
                  ),
                  child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(4)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(list[index].imageUrl))),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        list[index].title,
                        style: themeData.textTheme.titleMedium,
                      ),
                      Text(
                        list[index].artistName,
                        style: themeData.textTheme.labelSmall,
                      ),
                    ],
                  ),
                ),
                Icon(Icons.more_vert_outlined)
              ],
            );
          },
        ),
      ),
    ],
  );
}
