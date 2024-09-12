import 'package:chatbot_ai/Screens/Chat.dart';
import 'package:chatbot_ai/Screens/Home.dart';
import 'package:chatbot_ai/Screens/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var Tabs = [];
  int currentTabIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Tabs = [Home(), Chat(), Profile()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Tabs[currentTabIndex],
        backgroundColor: Colors.black,
        bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
          BottomNavigationBar(
            currentIndex: currentTabIndex,
            onTap: (currentIndex) {
              //print("Current tab index is $currentIndex");
              currentTabIndex = currentIndex;
              setState(() {});
            },
            selectedLabelStyle: TextStyle(color: Colors.white),
            selectedItemColor: Colors.white,
            backgroundColor: Colors.transparent,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled, color: Colors.white), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble, color: Colors.white),
                  label: 'Chat'),
              BottomNavigationBarItem(
                  icon:
                      Icon(Icons.person, color: Colors.white),
                  label: 'Profile')
            ],
          ),
        ]));
  }
}


