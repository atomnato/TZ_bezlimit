import 'package:flutter/material.dart';

///Screen with selected item for save.
class SaveScreen extends StatefulWidget {
  const SaveScreen({Key? key}) : super(key: key);

  @override
  State<SaveScreen> createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const Spacer(),
              const Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Введите номер элемента',
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 48.0,
                child: ElevatedButton(
                  onPressed: () {},
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
