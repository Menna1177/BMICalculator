import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const GenderCard({
    super.key,
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: isSelected ? Color(0xFF57094D): Color(0xFFCF248E),
            borderRadius: BorderRadius.circular(15),
          ),
          height: 210,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 80, color: Colors.white),
              const SizedBox(height: 10),
              Text(label, style: const TextStyle(color: Colors.white, fontSize: 30)),
            ],
          ),
        ),
      ),
    );
  }
}
