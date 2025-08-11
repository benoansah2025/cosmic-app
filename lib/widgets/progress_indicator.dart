import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  final double progress; // value between 0.0 and 1.0
  final String label;

  const CustomProgressIndicator({
    required this.progress,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.white)),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.white10,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
            minHeight: 8,
          ),
        ),
      ],
    );
  }
}
