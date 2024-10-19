import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_1/Navigation.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:
            Text('Dashboard', style: Theme.of(context).textTheme.displayLarge),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Balance Card
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Text('Total Balance',
                        style: TextStyle(fontSize: 18.0, color: Colors.grey)),
                    SizedBox(height: 10),
                    Text('\$1,500',
                        style: TextStyle(
                            fontSize: 36.0, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            // Recent Transactions
            Text('Recent Transactions',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600)),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _transactionItem('Grocery', '\$50', Colors.red),
                  _transactionItem('Salary', '\$2000', Colors.green),
                  _transactionItem('Netflix Subscription', '\$10', Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }

  Widget _transactionItem(String title, String amount, Color color) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color.withOpacity(0.1),
        child: Icon(Icons.monetization_on, color: color),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text('Expense'),
      trailing: Text(amount,
          style: TextStyle(fontWeight: FontWeight.bold, color: color)),
    );
  }
}
