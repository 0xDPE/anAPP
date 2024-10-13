import 'package:flutter/material.dart';
import 'package:notes_app/utils/popUpInput.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        title: const Center(child: Text("NOTES APP")),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/details');
                },
                child: Text(
                  "Details",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const PopUpInput()
                  );
                },
                child: Text(
                  "New",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Open",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
