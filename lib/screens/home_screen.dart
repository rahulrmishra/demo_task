import 'package:flutter/material.dart';
import 'package:test_task/resources/app_strings.dart';
import 'package:test_task/screens/list_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(AppStrings.listViewScreen),
      ),
      body: const ListWidget(),
    );
  }
}
