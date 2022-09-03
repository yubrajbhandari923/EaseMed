import 'package:flutter/material.dart';
import 'package:promethius/screens/home_screen.dart';

import 'nav_bar/chat_bot.dart';
import 'nav_bar/news.dart';

class CollectiveScreen extends StatefulWidget {
  const CollectiveScreen({Key? key}) : super(key: key);

  @override
  State<CollectiveScreen> createState() => _CollectiveScreenState();
}

class _CollectiveScreenState extends State<CollectiveScreen> {
  int currentIndex = 0;
  var tabIndex = 0;
  var bottomIndex = 0;
  final pageController = PageController();

  final screens = [HomeScreen(),const ChatBot(), const NewsScreen() ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          //type:,
          selectedItemColor: Colors.black,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble), label: 'Talk to me'),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
          ],
        ),
      ),
    );
  }
}
