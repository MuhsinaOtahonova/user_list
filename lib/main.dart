import 'package:flutter/material.dart';
import 'package:user_list/ui/user_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('User List'),
        ),
        body: UserListWidget(),
      ),
    );
  }
}