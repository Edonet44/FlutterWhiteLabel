import 'package:flutter/material.dart';

enum Flavor {
  zona,
  place4place,
  coventry,
  wayhome,
}

///
///Classe creata automaticamente grazie alla libreria
///modificare in base alla gestione della applicazione
///abbiamo un get [name] per il nome dell applicazione visibile come banner al centro , e un get [title] per il titolo dell app bar
///inserire la personalizzazione dello splashscreen con logo, e del carousel
///stessa cosa vale per le api qui dentro ci saranno le stringhe di recupero per le api
///esempio: final String apiAltraZona ="https://newsapi.org/v2/everything?q=tesla&from=2022-08-19&sortBy=publishedAt&apiKey=0514f36a172042599cdc6b5710d54752";

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.zona:
        return 'AltraZona';
      case Flavor.place4place:
        return 'Place4Place';
      case Flavor.coventry:
        return 'I Coventry';
      case Flavor.wayhome:
        return 'The WayHome';
      default:
        return 'title';
    }
  }

//immagine riferita al logo
  static String get img {
    switch (appFlavor) {
      case Flavor.zona:
        return 'android/app/src/zona/assets/logo.png';
      case Flavor.place4place:
        return 'android/app/src/Place4Place/assets/logo.png';
      case Flavor.coventry:
        return 'android/app/src/Coventry/assets/logo.png';
      case Flavor.wayhome:
        return 'android/app/src/WayHome/assets/logo.png';
      default:
        return '';
    }
  }

  //api test divise per ogni ditta
  static String get API {
    switch (appFlavor) {
      case Flavor.zona:
        return 'https://jsonplaceholder.typicode.com/todos';
      case Flavor.place4place:
        return 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=525d4a311e554117b645c99f6fa66c92';
      case Flavor.coventry:
        return 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=525d4a311e554117b645c99f6fa66c92';
      case Flavor.wayhome:
        return 'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=525d4a311e554117b645c99f6fa66c92';
      default:
        return '';
    }
  }

//stringhe per recupero api keycloak
  static List<String> get API_KYECLOAK {
    switch (appFlavor) {
      case Flavor.zona:
        return [
          "flutter-client",
          "http://localhost:8089/auth/realms/flutter-client/protocol/openid-connect"
        ];
      case Flavor.place4place:
        return [];
      case Flavor.coventry:
        return [];
      case Flavor.wayhome:
        return [];
      default:
        return [];
    }
  }

//gestione dei colori
  static Color? get background {
    switch (appFlavor) {
      case Flavor.zona:
        return Colors.green[400]!;
      case Flavor.place4place:
        return Colors.grey[300]!;
      case Flavor.coventry:
        return Colors.orange[350]!;
      case Flavor.wayhome:
        return Colors.amber[300]!;
      default:
        return Colors.white;
    }
  }

//gestione immagine sfondo dello spalshscreen
  static String get splshimg {
    switch (appFlavor) {
      case Flavor.zona:
        return 'android/app/src/zona/assets/onBoardScreen.png';
      case Flavor.place4place:
        return 'android/app/src/Place4Place/assets/onBoardScreenPalce4Place.png';
      case Flavor.coventry:
        return 'android/app/src/Coventry/assets/onBoardScreenCoventry.png';
      case Flavor.wayhome:
        return 'android/app/src/WayHome/assets/onBoardScreenWayhome.png';
      default:
        return '';
    }
  }
}
