// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

// import 'dart:developer';

import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // test editing controller to get what the user typed
  TextEditingController myController = TextEditingController();

  // greeting message
  String greetingMesssage = "";

  // greet user method
  void greetUser() {
    // log(myController.text);
    String userName = myController.text;
    setState(() {
      greetingMesssage = "Hello, " + userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // greet user message
            Align(alignment: Alignment.center, child: Text(greetingMesssage)),
            // textfield
            TextField(
              controller: myController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Type yourname"),
            ),
            // button
            ElevatedButton(
              onPressed: greetUser,
              child: Text("Tap"),
            ),
          ],
        ),
      ),
    );
  }
}
