import 'package:flutter/material.dart';

import 'package:tz_bezlimit/widgets/content_box.dart';

///Screen containing main screen content.
class ContentScreen extends StatelessWidget {
  final Size size;

  const ContentScreen({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 48.0, left: 12.0, right: 12.0),
      height: size.height,
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
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) => ContentBox(
                index: index,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
