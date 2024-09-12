import 'package:chatbot_ai/Models/Image_Recognition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // Create a separate method or widget for AppBar
  Widget createAppBar(String message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.list_alt),
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

  Widget createUserWelcome(String greeting) {
    return Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            greeting,
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          /*Container(
            height: 500,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(10),
                itemBuilder: ((context, index) {
                  return Image_AI.Answer;
                })),
          )*/
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
        child: Column(children: [
          createAppBar('CODE CLAN AI'),
          createUserWelcome("Hello, User \nHow can I assist you today?"),
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
