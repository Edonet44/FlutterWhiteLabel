import 'package:flutter/material.dart';
import 'package:goodgo/widgets/app_text.dart';

class SmartDevBox extends StatelessWidget {
  const SmartDevBox({
    super.key,
    required this.smtDevboxName,
    required this.iconPath,
  });

  final String smtDevboxName;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(iconPath, height: 60),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppText(text: smtDevboxName),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
