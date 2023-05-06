import 'package:flutter/material.dart';
import 'package:goodgo/widgets/text/app_text.dart';

class CustomCircularButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double height;
  final double width;

  CustomCircularButton({
    required this.icon,
    required this.onPressed,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 2),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.orange.shade300,
              Colors.orange.shade400,
              Colors.orange.shade500,
              Colors.orange.shade600,
            ],
            stops: [0.1, 0.3, 0.8, 1.0],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 40.0,
            ),
            Positioned(
              bottom: 10,
              child: AppText(
                text: 'Registra percorso',
                color: Colors.black26,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
