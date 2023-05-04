import 'package:flutter/material.dart';

class Strings {
  Strings._();

  static const String APP_NOME = ".:: Goodgo ::.";
  static const String APP_TAG = "Benvenuto";
  static const String READY_TO = "Pronto per partire?";
  static const String DESC_GO =
      "Questa app ti permette di gestire gli spostamenti e guadagnare Gekoin";
  static const String APP_TAG_CLASSIFICA = "Classifica generale";
  static const String APP_TAG_GEKOIN = "Gekoin";
  static const String APP_TAG_REGISTRAZIONE = "Registra";
  static const String APP_TAG_REGISTRAZIONE_DESC = "Registra un nuovo tragitto";
  static const String APP_TAG_GARE = "Gare";
  static const String APP_TAG_GARE_DESC = "Competi con gli altri utenti";
  static const String APP_TAG_TRACCE = "Tracce";
  static const String APP_TAG_TRACCE_DESC = "Controlla i tuoi percorsi";
  static const String APP_TAG_BADGES = "Badges";
  static const String APP_TAG_BADGES_DESC = "Controlla i badges ottenuti";
  static const String APP_TAG_BICI = "Bici";
  static const String APP_TAG_BICI_DESC = "Gestisci le mie biciclette";

//COLORS--------------------------------------------------------------------

//GARE SETTINGS
  static const Color APP_COLOR_BORDER_GARE = Colors.amber;
  static Color APP_COLOR_MODULE_BG_GARE =
      Colors.green.shade500.withOpacity(0.2);

//BICI SETTINGS

  static const Color APP_COLOR_BORDER_BICI = Color.fromARGB(255, 183, 155, 71);
  static Color APP_COLOR_MODULE_BG_BICI = Colors.grey.shade500.withOpacity(0.2);

//TRACCE SETTINGS
  static const Color APP_COLOR_BORDER_TRACCE =
      Color.fromARGB(255, 183, 155, 71);
  static Color APP_COLOR_MODULE_BG_TRACCE =
      const Color.fromARGB(255, 201, 52, 52).withOpacity(0.2);

//BADGES SETTINGS
  static const Color APP_COLOR_BORDER_BADGES =
      Color.fromARGB(255, 183, 155, 71);
  static Color APP_COLOR_MODULE_BG_BADGES =
      Color.fromARGB(255, 20, 153, 64).withOpacity(0.2);
}
