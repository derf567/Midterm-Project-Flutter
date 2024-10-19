import 'package:flutter/material.dart';
import 'package:flutter_1/Navigation.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile & Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('User Profile'),
            // Add more profile details and settings like theme, currency
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
