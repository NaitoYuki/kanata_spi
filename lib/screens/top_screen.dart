import 'package:flutter/material.dart';
import 'package:kanata/screens/pages/course_page_screen.dart';
import 'package:kanata/screens/pages/home_page_screen.dart';
import 'package:kanata/screens/pages/slide_page_screen.dart';
import 'package:kanata/screens/pages/training_page_screen.dart';

class TopScreen extends StatefulWidget {
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  int _currentIndex = 0;

  final _pages = [
    HomePageScreen(),
    CoursePageScreen(),
    TrainingPageScreen(),
    SlidePageScreen()
  ];

  final _pagesTitle = [
    "ホーム",
    "コース",
    "トレーニング",
    "ガイド"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(_pagesTitle[_currentIndex]),
          centerTitle: true
        ),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              title: const Text('ホーム')
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.school),
                title: const Text('コース')
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.list),
                title: const Text('トレーニング')
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.slideshow),
                title: const Text('スライド')
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }
        ),
      ),
    );
  }
}
