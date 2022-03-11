import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tz_bezlimit/widgets/save_screen.dart';

class ContentBox extends StatelessWidget {
  final int index;

  const ContentBox({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(
        SaveScreen(
          currentIndex: index,
        ),
      ),
      child: Container(
        width: 64.0,
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: Center(
          child: Text(
            "$index",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
