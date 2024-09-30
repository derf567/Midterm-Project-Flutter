import 'package:flutter/material.dart';
import 'package:flutter_1/fifth_screen.dart';
import 'package:flutter_1/fourth_screen.dart';
import 'package:flutter_1/second_screen.dart';
import 'package:flutter_1/third_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('My Portfolio')),
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
                  width: 450,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://static0.cbrimages.com/wordpress/wp-content/uploads/2023/12/luffy-from-one-piece.jpg"),
                    fit: BoxFit.cover)
                  ),
                  
                ),
                
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondScreen()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.deepPurpleAccent,
                        ),
                        child: Center(
                          child: Text(
                            'Wire Frames',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Add some space between buttons
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThirdScreen()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.deepPurpleAccent,
                        ),
                        child: Center(
                          child: Text(
                            'Third Page',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Add some space between buttons
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FourthScreen()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.deepPurpleAccent,
                        ),
                        child: Center(
                          child: Text(
                            'Fourth Page',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Add some space between buttons
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FifthScreen()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.deepPurpleAccent,
                        ),
                        child: Center(
                          child: Text(
                            'Fifth Page',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
