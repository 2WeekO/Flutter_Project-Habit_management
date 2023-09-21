import 'package:flutter/material.dart';

class HabitScreen extends StatefulWidget {
  const HabitScreen({super.key});

  @override
  State<HabitScreen> createState() => _HabitScrrenState();
}

class _HabitScrrenState extends State<HabitScreen> {
  int HomePageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
    return Container();
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
    return const Placeholder();
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
    return const Placeholder();
  }
}
//---------------NIGHT PAGE <END>-------------------------