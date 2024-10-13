// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PopUpInput extends StatefulWidget {
  const PopUpInput({super.key});

  @override
  State<PopUpInput> createState() => _PopUpInputState();
}

class _PopUpInputState extends State<PopUpInput> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    final text = myController.text;
    print("The text field: $text (${text.characters.length})");
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("File Name: "),
      content: TextField(
        controller: myController,
        autofocus: true,
        decoration: const InputDecoration(
          hintText: "Enter the name of the file",
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "SUBMIT",
            style: Theme.of(context).textTheme.displaySmall,
          ),
        )
      ],
    );
  }
}
