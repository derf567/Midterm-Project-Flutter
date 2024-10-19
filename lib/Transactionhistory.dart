import 'package:flutter/material.dart';
import 'package:flutter_1/Navigation.dart';

class TransactionHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction History'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Grocery'),
            subtitle: Text('\$50 - Expense'),
          ),
          ListTile(
            title: Text('Salary'),
            subtitle: Text('\$2000 - Income'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
