import 'package:flutter/material.dart';
import 'package:flutter_1/AddTransactionPage.dart';
import 'package:flutter_1/Categories.dart';
import 'package:flutter_1/Navigation.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<Map<String, String>> _transactions = [];
  String _selectedCategory = 'All';

  void _saveTransaction(String amount, String description, String category) {
    setState(() {
      _transactions.add({
        'amount': amount,
        'description': description,
        'category': category,
      });
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final filteredTransactions = _transactions.where((transaction) {
      return _selectedCategory == 'All' ||
          transaction['category'] == _selectedCategory;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard', style: TextStyle(fontSize: 24)),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Category Filter Dropdown
            DropdownButton<String>(
              value: _selectedCategory,
              icon: const Icon(Icons.filter_list),
              items: const [
                DropdownMenuItem(value: 'All', child: Text('All')),
                DropdownMenuItem(value: 'Food', child: Text('Food')),
                DropdownMenuItem(value: 'Transport', child: Text('Transport')),
                DropdownMenuItem(value: 'Income', child: Text('Income')),
                DropdownMenuItem(value: 'Expense', child: Text('Expense')),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedCategory = value!;
                });
              },
            ),
            const SizedBox(height: 16),
            const Text(
              'Recent Transactions',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Display Transactions
            Expanded(
              child: filteredTransactions.isEmpty
                  ? const Center(child: Text('No transactions added yet.'))
                  : ListView.builder(
                      itemCount: filteredTransactions.length,
                      itemBuilder: (context, index) {
                        final transaction = filteredTransactions[index];
                        return Card(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          elevation: 3,
                          child: ListTile(
                            title: Text(
                              transaction['description'] ?? '',
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Amount: \$${transaction['amount']} - Category: ${transaction['category']}',
                              style: const TextStyle(fontSize: 14),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  AddTransactionPage(onSave: _saveTransaction),
            ),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
