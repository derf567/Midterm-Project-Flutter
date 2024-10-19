import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/Navigation.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Food'),
          ),
          ListTile(
            title: Text('Transport'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
