import 'package:flutter/material.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class SortPannel extends StatelessWidget {
  const SortPannel({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> months = ['January', 'Febuary', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Center(
            child: Text('Sort By', style: TextStyle(fontSize: 18, color: AppPallete.whiteColor),),
          ),
          DropdownButton<String>(
            items: months.map((month) => DropdownMenuItem(value: month, child: Text(month))).toList(),
            onChanged: (value) {
              // Handle month selection
            },
            hint: const Text('Select Month'),
          ),
          const SizedBox(height: 16),
          DropdownButton<String>(
            items: ['2023', '2024'].map((year) => DropdownMenuItem(value: year, child: Text(year))).toList(),
            onChanged: (value) {
              // Handle year selection
            },
            hint: const Text('Select Year'),
          ),
        ],
      ),
    );
  }
}