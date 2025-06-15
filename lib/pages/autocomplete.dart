import 'package:flutter/material.dart';

class AutocompletePage extends StatefulWidget {
  const AutocompletePage({super.key});

  @override
  State<AutocompletePage> createState() => _AutocompletePageState();
}

class _AutocompletePageState extends State<AutocompletePage> {
  // Data untuk autocomplete
  static const List<String> _kOptions = [
    'apple', 'application', 'banana', 'orange', 'grape'
  ];

  // Data untuk dropdown spinner
  String? _selectedFruit;
  final List<String> _fruits = ['Apple', 'Banana', 'Orange', 'Grape', 'Mango'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autocomplete & Spinner'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Autocomplete
            Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text.isEmpty) {
                  return const Iterable<String>.empty();
                }
                return _kOptions.where((String option) {
                  return option.contains(textEditingValue.text.toLowerCase());
                });
              },
              onSelected: (String selection) {
                print('Selected: $selection');
              },
              fieldViewBuilder: (BuildContext context,
                  TextEditingController textEditingController,
                  FocusNode focusNode,
                  VoidCallback onFieldSubmitted) {
                return TextField(
                  controller: textEditingController,
                  focusNode: focusNode,
                  decoration: const InputDecoration(
                    labelText: 'Autocomplete',
                    border: OutlineInputBorder(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            // Dropdown Spinner
            DropdownButtonFormField<String>(
              value: _selectedFruit,
              decoration: const InputDecoration(
                labelText: 'Pilih Buah',
                border: OutlineInputBorder(),
              ),
              items: _fruits.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedFruit = newValue;
                });
              },
            ),
            const SizedBox(height: 20),
            // Loading Spinner
            const Center(
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}