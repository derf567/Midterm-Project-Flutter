import 'package:flutter/material.dart';
import 'package:flutter_1/Navigation.dart';

class TransactionHistoryPage extends StatelessWidget {
  const TransactionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History'),
      ),
      body: ListView(
        children: const <Widget>[
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
