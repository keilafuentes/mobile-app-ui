import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const List<String> profiles = ["s", "s"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('overlaping images'),
          ),
          body: Center(
              child: Row(
            children: [
              for (int i = 0; i < 3; i++)
                const Align(
                  widthFactor: 0.8,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                  ),
                )
            ],
          ))),
    );
  }
}
