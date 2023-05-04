import 'dart:convert';
import 'dart:math';
import 'package:goodgo/model/articoli/articles.dart';
import 'package:goodgo/model/todos/cl_todos.dart';
import '../../flavors.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../../model/keycloak/keycloack.dart';

class ApiServices {
//passo la stringa Api della classe flavors
  String useUrl = "${F.API}";
  List<String> APiKeycloak = F.API_KYECLOAK;

  //articolo
//   Future<List<Articoli>> getArticle() async {
//     try {
//       final response = await http.get(Uri.parse(useUrl));

//       if (response.statusCode == 200) {
//         Map<String, dynamic> json = jsonDecode(response.body);

// // creo una lista vuota di tipo dinamico perchè json prende tutti i tipi di valori
//         List<dynamic> body = json['articles'];

// //creo una variabile lista di tipo classe articolo, e assegno la lista e la rimappo e la
// //inserisco in una lista json della classe articolo
//         List<Articoli> articles =
//             body.map((dynamic item) => Articoli.fromJson(item)).toList();

//         return articles;
//       } else {
//         debugPrint(response.statusCode.toString());
//       }
//     } catch (e) {
//       debugPrint(e.toString());
//     }
//     return [];
//   }

//recupero APi Todos
  Future<List<Todos>> getTodos() async {
    try {
      final response = await http.get(Uri.parse(useUrl));

      if (response.statusCode == 200) {
        //'todos' è il suffisso iniziale del file json, questa è la sua struttura
        /*
        {
          "todos":[
            {
              "userId": 1,
              "id": 1,
              "title": "delectus aut autem",
              "completed": false
            },
            {
              "userId": 1,
              "id": 2,
              "title": "quis ut nam facilis et officia qui",
              "completed": false
            }
          ]
        }
      */

        // store json data into list
        var lista = json.decode(response.body);

        // iterate over the list and map each object in list to Todos by calling Todos.fromJson
        if (lista != null) {
          //forzo il compilatore a
          List<Todos> todos = (lista != null)
              ? List<Todos>.from(lista.map((i) => Todos.fromJson(i)))
              : [];

          // print(todos.runtimeType); //returns List<Todos>
          // print(todos[0].runtimeType); //returns Todos
          return todos;
        } else {
          debugPrint(response.statusCode.toString());
        }
      } else {
        debugPrint(response.statusCode.toString());
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return [];
  }

//richiamo per autorizzazione layout con keycloak
  Future<List<Keycloak>> getKeyCloack_Login(
      String Username, String Password) async {
//variabili
    String url = APiKeycloak[1] + '/token-service';
    Map<String, String> headers = {
      'content-type': 'application/x-www-form-urlencoded',
      'cache-control': 'no-cache'
    };
    Map<String, String> data = {
      'client_id': APiKeycloak[0],
      'username': Username,
      'password': Password,
      'grant_type': 'password'
    };
    try {
      http.Response response =
          await http.post(Uri.parse(url), headers: headers, body: data);
      print(response.body);
      print(response.statusCode);
      if (response.statusCode == 200) {
        dynamic token = json.decode(response.body);

        if (token != null) {
          List<Keycloak> tokens = (token != null)
              ? List<Keycloak>.from(token.map((i) => Keycloak.fromJson(i)))
              : [];

          return tokens;
        } else {
          debugPrint(response.statusCode.toString());
        }
      } else {
        debugPrint(response.statusCode.toString());
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return [];
  }

  //create utente

  Future<void> createUser(String username, String password) async {
    String url = APiKeycloak[0];
    String realm =
        'flutter-client'; // Sostituisci con il nome del tuo realm Keycloak

    String authHeader = 'Basic ' +
        base64Encode(utf8.encode(
            'admin:admin')); // Sostituisci con le credenziali di amministrazione di Keycloak

    Map<String, String> headers = {
      'Authorization': authHeader,
      'Content-Type': 'application/json'
    };

    Map<String, dynamic> userData = {
      'username': username,
      'password': password,
      'enabled': true
    };

    String jsonBody = json.encode(userData);

    try {
      http.Response response = await http.post('$url/$realm' as Uri,
          headers: headers, body: jsonBody);

      if (response.statusCode == 201) {
        print('Utente creato con successo');
      } else {
        print('Errore durante la creazione dell\'utente: ${response.body}');
      }
    } catch (e) {
      print('Errore durante la creazione dell\'utente: $e');
    }
  }
}





//KEYCLOACK
//   Future<List<Keycloak>> getKeyCloack_Login(String Username, String Password) async {
//  String url = APiKeycloak[0] + '';
//     Map<String, String> headers = {
//       'content-type': 'application/x-www-form-urlencoded',
//       'cache-control': 'no-cache'
//     };
//     Map<String, String> data = {
//       'client_id': APiKeycloak[1],
//       'username': Username,
//       'password': Password,
//       'grant_type': 'password'
//     };
//         try {
          
//             http.Response response =
//             await http.post(url as Uri, headers: headers, body: data);
//             print(response.body);
//             print(response.statusCode);


//               if (response.statusCode == 200) {
//             dynamic token = json.decode(response.body);

//                   if (token != null) {
//                     List<Keycloak> todos = (token != null)
//                     ? List<Keycloak>.from(token.map((i) => Keycloak.fromJson(i)))
//                     : [];

//                     return token;

//                 }else{

// debugPrint(response.statusCode.toString());
//                 }else{

// debugPrint(response.statusCode.toString());
            

//         } catch (e) {
          
//         }
//         }
//         return [];
//         }
//   }
    
    

     
  //     

  //     } else {
  //       debugPrint(response.statusCode.toString());
  //     }
  //     } else {
  //       debugPrint(response.statusCode.toString());
  //     }
     
  //   }
  // }

