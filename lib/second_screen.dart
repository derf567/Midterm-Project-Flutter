import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Wire Frames')),
        backgroundColor: Colors.deepPurpleAccent,
        toolbarHeight: 100,
      ),
      body: Center(
        child: SizedBox(
          width: 500,
          child: SizedBox(
            height: 700,
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 520,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://i.ibb.co/Zmd0yLd/Untitled.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20), // Optional: Add border radius for aesthetics
                  ),
                ),
                SizedBox(height: 20), // Space between image and button
                InkWell(
                  onTap: () {
                    Navigator.pop(context); // Navigate back to the previous screen
                  },
                  child: Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: Center(
                      child: Text(
                        'Back to Home',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}