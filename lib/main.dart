import 'package:flutter/material.dart';
import 'package:habit_management/screen/goalscreen.dart';
import 'package:habit_management/screen/habitscreen.dart';
import 'package:habit_management/screen/todoscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: BetterHabitApp(),
    );
  }
}

class BetterHabitApp extends StatefulWidget {
  const BetterHabitApp({super.key});

  @override
  State<BetterHabitApp> createState() => _BetterHabitAppState();
}

class _BetterHabitAppState extends State<BetterHabitApp> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 143, 143, 143),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.transparent, // 하단 네비게이션 바 배경 색상: 투명
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color.fromARGB(255, 255, 255, 255),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.flag, color: Colors.black),
            icon: Icon(Icons.flag, color: Colors.white),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.home, color: Colors.black),
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: '',
          ),
          NavigationDestination(
            //selectedIcon: Icon(Icons.???),
            selectedIcon: Icon(Icons.checklist, color: Colors.black),
            icon: Icon(Icons.checklist, color: Colors.white),
            label: '',
          ),
        ],
      ),
      body: <Widget>[
        const GoalScreen(),
        const HabitScreen(),
        const TodoScreen(),
      ][currentPageIndex],
    );
  }
}
