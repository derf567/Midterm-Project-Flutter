import 'package:flutter/material.dart';

class AddTransactionPage extends StatelessWidget {
  final Function(String, String, String) onSave; // Callback to save transaction
  final _formKey = GlobalKey<FormState>();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  String? selectedCategory; // Track selected category

  AddTransactionPage({super.key, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Add Transaction',
            style: Theme.of(context).textTheme.titleLarge),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              // Amount Input
              TextFormField(
                controller: amountController,
                decoration: InputDecoration(
                  labelText: 'Amount',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  prefixText: '₱ ', // Add PHP sign as prefix text
                  prefixIcon:
                      const Icon(Icons.money), // Change this icon if necessary
                ),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Enter amount' : null,
              ),
              const SizedBox(height: 20),
              // Description Input
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  prefixIcon: const Icon(Icons.description),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Enter description' : null,
              ),
              const SizedBox(height: 20),
              // Category Dropdown
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Category',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  prefixIcon: const Icon(Icons.category),
                ),
                items: const [
                  DropdownMenuItem(value: 'Food', child: Text('Food')),
                  DropdownMenuItem(
                      value: 'Transport', child: Text('Transport')),
                  DropdownMenuItem(value: 'Income', child: Text('Income')),
                  DropdownMenuItem(value: 'Expense', child: Text('Expense')),
                ],
                onChanged: (value) {
                  selectedCategory = value; // Save selected category
                },
                validator: (value) => value == null ? 'Select category' : null,
              ),
              const SizedBox(height: 30),
              // Save Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() &&
                      selectedCategory != null) {
                    onSave(amountController.text, descriptionController.text,
                        selectedCategory!); // Pass selected category to onSave
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 40.0),
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text('Save', style: TextStyle(fontSize: 18.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
