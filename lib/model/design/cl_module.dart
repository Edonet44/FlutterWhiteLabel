import 'package:flutter/material.dart';
import 'package:goodgo/utils/strings.dart';


///[Deprecated] classe da usare per gestire la creazione di moduli

///Classe per la creazione dello screen dei moduli  :


class Module {
  final Color iconBorder;
  final Color iconBg;
  final Color iconColor;
  final IconData icon;
  final String titolo;
  final String desc;
  final Color moduleBorder;
  final Color moduleBg;
  final Color buttonColor;
  final Color buttonFont;



  Module(
      this.iconBorder,
      this.iconBg,
      this.iconColor,
      this.icon,
      this.titolo,
      this.desc,
      this.moduleBorder,
      this.moduleBg,
      this.buttonColor,
      this.buttonFont);

//funzione che ritorna una lista di moduli con i colori ed i valori assegnati
  static List<Module> generaModuli() {
    
    
    return [
      Module(
        Colors.grey.shade300,
        Colors.black,
        Colors.white,
        Icons.play_arrow,
        Strings.APP_TAG_GARE,
        Strings.APP_TAG_GARE_DESC,
        Colors.amber,
        Colors.grey.shade500.withOpacity(0.2),
        const Color.fromARGB(255, 72, 150, 150),
        Colors.black,
      ),
      Module(
        Colors.grey.shade300,
        Colors.black,
        Colors.white,
        Icons.lock,
        Strings.APP_TAG_BICI,
        Strings.APP_TAG_BICI_DESC,
        Colors.amber,
        Colors.black,
        const Color.fromARGB(255, 72, 150, 150),
        Colors.black,
      )
    ];
  }

  
}
