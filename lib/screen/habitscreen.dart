import 'package:flutter/material.dart';

class HabitScreen extends StatefulWidget {
  const HabitScreen({super.key});

  @override
  State<HabitScreen> createState() => _HabitScrrenState();
}

class _HabitScrrenState extends State<HabitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(tabs: [
                Tab(
                  child: Text(
                    'Morning',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Afternoon',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Night',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ]),
            ),
            Expanded(
              child: Container(
                child: TabBarView(children: [
                  MorningPage(),
                  AfternoonPage(),
                  NightPage(),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//---------------MORNING PAGE <START>-------------------------
class MorningPage extends StatefulWidget {
  const MorningPage({super.key});

  @override
  State<MorningPage> createState() => _MorningPageState();
}

class _MorningPageState extends State<MorningPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Morning Page'),
    );
  }
}
//---------------MORNING PAGE <END>-------------------------

//---------------Afternoon PAGE <START>-----------------------
class AfternoonPage extends StatefulWidget {
  const AfternoonPage({super.key});

  @override
  State<AfternoonPage> createState() => _AfternoonPageState();
}

class _AfternoonPageState extends State<AfternoonPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Afternoon Page'),
    );
  }
}
//---------------Afternoon PAGE <END>-------------------------

//---------------NIGHT PAGE <START>-----------------------
class NightPage extends StatefulWidget {
  const NightPage({super.key});

  @override
  State<NightPage> createState() => _NightPageState();
}

class _NightPageState extends State<NightPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Night page'),
    );
  }
}
//---------------NIGHT PAGE <END>-------------------------