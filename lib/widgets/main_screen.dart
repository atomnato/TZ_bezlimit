import 'package:flutter/material.dart';

import 'package:tz_bezlimit/widgets/app_bar_content.dart';
import 'package:tz_bezlimit/widgets/content_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: AppBarContent(
                minExtended: 0,
                maxExtended: size.height * 0.35,
                size: size,
              ),
            ),
            SliverToBoxAdapter(
              child: ContentScreen(
                size: size,
              ),
            )
          ],
        ),
      ),
    );
  }
}
