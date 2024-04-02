import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  List<bool> isSelected = List.generate(3, (index) => false);

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 64,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: isSelected.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: GestureDetector(
                onTap: () {
                  setState(
                    () {
                      if (!isSelected[index]) {
                        isSelected = isSelected.map((e) => false).toList();
                      }
                      isSelected[index] = !isSelected[index];
                    },
                  );
                },
                child: Container(
                  // width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: isSelected[index]
                        ? Color(0xffFFFFFF)
                        : Color(0xff282828),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text('Home $index')),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
