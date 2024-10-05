import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              body: GridView.count(
        crossAxisCount: 3, // Number of cards in each row
        childAspectRatio: 1.0,
        children: List.generate(51, (index) {
          return Card(
            elevation: 30,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
            color: getColor(index),
            child: SizedBox(
              width: 300,
              height: 300,
              child: Image.asset('images/free.png'), // Add your image asset
            ),
          );
        }),
      ))),
    );
  }

  // Function to return a different color for each card
  Color getColor(int index) {
    List<Color> colors = [
      Colors.greenAccent,
      Colors.blueAccent,
      Colors.orangeAccent,
      Colors.pinkAccent,
      Colors.purpleAccent,
      Colors.redAccent,
      Colors.tealAccent,
      Colors.yellowAccent,
      Colors.cyanAccent,
      Colors.limeAccent,
    ];
    return colors[index % colors.length]; // Cycles through the colors
  }
}
