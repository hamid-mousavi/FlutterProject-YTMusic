import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/category.dart';
import 'package:flutter_application_1/screen/HomeScreen/bloc/home_bloc.dart';

class CategoryWidget extends StatefulWidget {
  final List<SongCategory> categories;

  const CategoryWidget({super.key, required this.categories});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  List<bool> isSelected = List.generate(6, (index) => false);

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 64,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.categories.length,
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
                    child: Center(
                        child: Text(widget.categories[index].title.toString())),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
