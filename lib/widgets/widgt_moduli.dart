import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goodgo/model/design/cl_module.dart';
import '../model/design/cl_moduli.dart';
import 'screen/widgt_bici.dart';
import 'widgt_userModules.dart';

///Classe [deprecated]oggetto Moduli che utilizza il costruttore della classe cl_module.dart per recuperare i dati dei moduli

//old class
///Semplice oggetto per il titolo dei moduli
class Moduli extends ConsumerWidget {
  // const Moduli({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //istanza per il richiamo della funzione generazione moduli
    // final listaModuli = Module.generaModuli();

    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Moduli',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey.shade500)),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.grid_view_rounded)),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.list)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//richiama il widget specifico per la creazione di un modulo
// // UserModule(listaModuli[0])
// ...listaModuli.map((e) =>UserModule(e)).toList()

// ...se voglio creare un nuovo oggetto con inkwell basta avvolgerlo
//...listaModuli.map((e) => InkWell(
// onTap: () {
//   // Gestisci l'evento di tap sul modulo
//   // Puoi navigare a una nuova schermata o eseguire altre azioni
//                         Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => e.screen),
//                   );
// },
//   child: UserModule(e)
// )).toList(),
// ...

/*  
              listaModuli è una lista di elementi che contiene dati utilizzati per creare gli oggetti UserModule.
              map((e) => UserModule(e)) viene chiamato su listaModuli e crea un nuovo iteratore.
              Per ogni elemento e in listaModuli, viene creato un oggetto UserModule(e).
              UserModule(e) è la chiamata al costruttore della classe UserModule passando l'elemento e come argomento.
              In questo modo, viene creato un nuovo oggetto UserModule per ogni elemento e nella lista.
              .toList() converte l'iteratore risultante in una lista di oggetti UserModule. */




// classe per creare lo switch tra gird e list nei moduli
// class Moduli extends ConsumerWidget {
 
//   final viewModeProvider = StateProvider<TypeMode>((ref) => TypeMode.list);
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final viewMode = ref.watch(viewModeProvider);

//     return Container(
//       padding: EdgeInsets.all(25),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'Moduli',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                   color: Colors.grey.shade500,
//                 ),
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {
//                       ref.read(viewModeProvider.notifier).state = TypeMode.grid;
//                     },
//                     icon: Icon(Icons.grid_view_rounded),
//                     color:
//                         viewMode == TypeMode.grid ? Colors.blue : Colors.grey,
//                   ),
//                   SizedBox(width: 15),
//                   IconButton(
//                     onPressed: () {
//                       ref.read(viewModeProvider.notifier).state = TypeMode.list;
//                     },
//                     icon: Icon(Icons.list),
//                     color:
//                         viewMode == TypeMode.list ? Colors.blue : Colors.grey,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           Consumer(
//             builder: (context, watch, _) {
//               final listaModuli = Module.generaModuli();

//               if (viewMode == TypeMode.grid) {
//                 return GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                   ),
//                   itemCount: listaModuli.length,
//                   itemBuilder: (context, index) {
//                     final modulo = listaModuli[index];
//                     return InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => modulo.screen),
//                         );
//                       },
//                       child: UserModule(modulo),
//                     );
//                   },
//                 );
//               } else {
//                 return Column(
//                   children: listaModuli.map((modulo) {
//                     return InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => modulo.screen),
//                         );
//                       },
//                       child: UserModule(modulo),
//                     );
//                   }).toList(),
//                 );
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
