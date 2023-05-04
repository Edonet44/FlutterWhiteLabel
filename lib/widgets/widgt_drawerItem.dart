import 'package:flutter/material.dart';

class DRw_item extends StatelessWidget {
  const DRw_item(
      {super.key,
      required this.nome,
      required this.icon,
      required this.onPressed});

  final String nome;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(icon, size: 20, color: Colors.white),
            SizedBox(
              width: 40,
            ),
            Text(
              nome,
              style: const TextStyle(fontSize: 15, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
