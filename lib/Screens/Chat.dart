import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  // Create a separate method or widget for AppBar
  Widget createAppBar(String message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          // Implement back button functionality here
        },
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container()), // Creates space between icons and text
          Text(message),
          Expanded(child: Container()),
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Implement settings button functionality here
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
        child: Column(children: [
          createAppBar('CODE CLAN AI'),
          SizedBox(height: 5),
        ]),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black87,
          Colors.black54,
          Colors.black45,
          Colors.black
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      )),
    );
  }
}
