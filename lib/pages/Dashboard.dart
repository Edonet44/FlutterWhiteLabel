import 'package:flutter/material.dart';
import 'package:goodgo/widgets/appbar/widgt_customAppbar.dart';
import 'package:goodgo/widgets/widgt_description.dart';
import 'package:goodgo/widgets/widgt_moduli.dart';
import 'package:goodgo/widgets/drawer/widgt_navDrawer.dart';
import 'package:goodgo/widgets/widgt_userModules.dart';

///Classe Dashboard dove inserire i vari oggetti

class Dashboard extends StatelessWidget {
  Dashboard({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const Nav_drawer(),
      backgroundColor: Colors.white60.withOpacity(0.90),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(scaffoldKey: _scaffoldKey),
            const Descrizione(),
            Moduli(),
            UserModule()
          ],
        ),
      ),
    );
  }
}

///
///App bar customizzata  Strutturata Container-->Stack-->Colonna-->Container
///Positioned Container --
///
//

// class CustomAppBar extends StatelessWidget {
//   // CustomAppBar({
//   //   super.key,
//   // });
// final GlobalKey<ScaffoldState> scaffoldKey;
//    CustomAppBar({Key? key, required this.scaffoldKey}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Stack(children: [
//         //colonna con dentro container con immagine rounded
//         Column(
//           children: [
//             Container(
//               decoration:
//                   BoxDecoration(borderRadius: BorderRadius.circular(40)),
//               height: 300,
//               child: ClipRRect(
//                   borderRadius: BorderRadius.circular(40),
//                   child: Image.asset(getRandomImage(imageList),
//                       fit: BoxFit.cover)),
//             ),
//             Container(height: 20),
//           ],
//         ),
//         //un Container posizionato in basso quasi al centro con icona freccia
//         Positioned(
//           bottom: 0,
//           left: 40,
//           right: 70,
//           child: Container(
//             height: 50,
//             width: MediaQuery.of(context).size.width,
//             child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     primary: Colors.amber,
//                     elevation: 0,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15))),
//                 onPressed: () {},
//                 child: const Column(
//                   children: [
//                     Icon(Icons.play_arrow),
//                     Text('Registra un nuovo tragitto'),
//                   ],
//                 )),
//           ),
//         ),
//         // 1 Container a sx con freccia di ritorno ios
//         Positioned(
//             top: MediaQuery.of(context).padding.top,
//             left: 25,
//             child: Container(
//               height: 50,
//               width: 50,
//               padding: EdgeInsets.only(left: 5),
//               decoration: BoxDecoration(
//                   color: Colors.black.withOpacity(0.3),
//                   borderRadius: BorderRadius.circular(15)),
//               child: IconButton(
//                 iconSize: 20,
//                 icon: Icon(
//                   Icons.arrow_back_ios,
//                   color: Colors.white,
//                 ),
//                 onPressed: () {
//                   //torna alla schermata precedente


//                   //Navigator.of(context).pop();
//                 },
//               ),
//             )),

//         //2 Container a left 25 con un immagine di people
//         Positioned(
//             top: MediaQuery.of(context).padding.top,
//             right: 25,
//             child: Container(
//               height: 50,
//               width: 50,
//               padding: EdgeInsets.only(left: 5),
//               decoration: BoxDecoration(
//                   color: Colors.black.withOpacity(0.3),
//                   borderRadius: BorderRadius.circular(15)),
//               child: IconButton(
//                 iconSize: 20,
//                 icon: Icon(
//                   Icons.people,
//                   color: Colors.white,
//                 ),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ))
//       ]),
//     );
//   }

// //funzione per la creazione di immmagini casuali
//   String getRandomImage(List<String> imageList) {
//     final random = Random();
//     final randomIndex = random.nextInt(imageList.length);
//     return imageList[randomIndex];
//   }

// // Utilizza la funzione per ottenere un'immagine casuale
//   List<String> imageList = [
//     'android/app/src/zona/assets/autobus.png',
//     'android/app/src/zona/assets/old_auto.png',
//     'android/app/src/zona/assets/side_walk.png',
//     'android/app/src/zona/assets/tram_go.png',
//     'android/app/src/zona/assets/side_walk.png',
//     // Aggiungi altre immagini alla lista, se necessario
//   ];

//   //String randomImage = getRandomImage(imageList);
// }
