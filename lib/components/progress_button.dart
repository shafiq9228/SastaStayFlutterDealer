import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class ProgressButton extends StatelessWidget {
  final double progress; // Value between 0 to 100
  final String text;

  const ProgressButton({
    Key? key,
    required this.progress,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ensure progress is clamped between 0 and 100
    final double clampedProgress = progress.clamp(0, 100);

    return SizedBox(
      width: double.infinity,
      height: 40,
      child: Stack(
        children: [
          // Background (Progress Color)
          Container(
            decoration: BoxDecoration(
              color: CustomColors.primary.withOpacity(0.3), // Base background color
              borderRadius: BorderRadius.circular(200),
            ),
          ),
          // Progress overlay
          FractionallySizedBox(
            widthFactor: clampedProgress / 100,
            child: Container(
              decoration: BoxDecoration(
                color: CustomColors.primary, // Progress fill color
                borderRadius: BorderRadius.circular(200),
              ),
            ),
          ),
          // Center Text
          Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}