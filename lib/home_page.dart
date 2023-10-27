import 'package:flutter/material.dart';
import 'package:timelinetute/component/my_timeline_tile.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: ListView(
          children: const [
            // start time
            MyTimelineTile(
              isFirst: true, 
              isLast: false, 
              isPast: true,
              eventCard: Text("JAJAN"),
              ),
      
            // middle time
            MyTimelineTile(
              isFirst: false, 
              isLast: false, 
              isPast: true,
              eventCard: Text("SHOLAT"),
              ),
      
            // end time
            MyTimelineTile(
              isFirst: false, 
              isLast: true, 
              isPast: false,
              eventCard: Text("NUGAS"),
              ),
          ],
        ),
      ),
    );
  }
}