import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tz_bezlimit/models/content_controller.dart';
import 'package:tz_bezlimit/widgets/content_box.dart';

///Screen containing main screen content.
class ContentScreen extends StatefulWidget {
  final Size size;

  const ContentScreen({Key? key, required this.size}) : super(key: key);

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  late ItemScrollController itemScrollController;

  Future scrollToItem(int index) async {
    itemScrollController.scrollTo(
      index: index,
      duration: const Duration(seconds: 2),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  void initState() {
    itemScrollController = ItemScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 48.0, left: 12.0, right: 12.0),
      height: widget.size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 64.0,
            child: GetBuilder<ContentController>(
              builder: (controller) {
                if (controller.saveIndex != null) {
                  scrollToItem(controller.saveIndex!);
                }
                return ScrollablePositionedList.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.perContent,
                  itemBuilder: (BuildContext context, int index) => ContentBox(
                    index: index,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
