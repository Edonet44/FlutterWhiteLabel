import 'package:flutter/material.dart';
import 'package:goodgo/widgets/app_text.dart';

import '../utils/strings.dart';

//classe oggetto per la descrizione
/// Strutturato: Container-Colonna--Riga-Padding

class Descrizione extends StatelessWidget {
  const Descrizione({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Informazioni',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black.withOpacity(0.5)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                Strings.DESC_GO,
                textAlign: TextAlign.center,
                style: TextStyle(
                    wordSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.grey.shade700),
              ),
            ),
          ],
        ));
  }
}
