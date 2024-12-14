import 'package:flutter/material.dart';

class CalorieProgressWidget extends StatefulWidget {
  const CalorieProgressWidget({super.key});

  @override
  State<CalorieProgressWidget> createState() => _CalorieProgressWidgetState();
}

class _CalorieProgressWidgetState extends State<CalorieProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      height: 100,
      width: MediaQuery.sizeOf(context).width * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Calorie Left",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "75%",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            LinearProgressIndicator(
              value: 0.75,
              minHeight: 20,
              borderRadius: BorderRadius.circular(20),
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(
                  const Color.fromARGB(255, 227, 129, 162)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("1750\nGoal"),
                Text("-"),
                Text("1500\nFood"),
                Text("+"),
                Text("500\nExercise"),
                Text("="),
                Text("750\nRemaining")
              ],
            )
          ],
        ),
      ),
    );
  }
}
