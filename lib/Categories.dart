import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/Navigation.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: ListView(
        children: const <Widget>[
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
