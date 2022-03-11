import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tz_bezlimit/models/content_controller.dart';

///Screen with selected item for save.
class SaveScreen extends StatefulWidget {
  final int currentIndex;

  const SaveScreen({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<SaveScreen> createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  final contentController = Get.find<ContentController>();
  late TextEditingController textEditController;

  @override
  void initState() {
    textEditController =
        TextEditingController(text: widget.currentIndex.toString());
    super.initState();
  }

  @override
  void dispose() {
    contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const Spacer(),
              Expanded(
                child: TextField(
                  controller: textEditController,
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Введите номер элемента',
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 48.0,
                child: ElevatedButton(
                  onPressed: () {
                    contentController.saveContent(textEditController.text);
                    Get.back();
                  },
                  child: const Text("Сохранить"),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
