import 'package:flutter/material.dart';
import 'package:goodgo/model/generics/cl_custom_iterable.dart';
import 'package:goodgo/pages/badges_screen.dart';
import 'package:goodgo/pages/bici_screen.dart';
import 'package:goodgo/pages/gare_screen.dart';
import 'package:goodgo/pages/tracce_screen.dart';
import 'package:goodgo/widgets/app_text.dart';
import 'package:goodgo/widgets/screen/widgt_badges.dart';
import 'package:goodgo/widgets/screen/widgt_gare.dart';
import 'package:goodgo/widgets/screen/widgt_tracce.dart';
import '../model/design/cl_module.dart';
import 'screen/widgt_bici.dart';
import '../utils/strings.dart';
import 'widgt_SmartdeviceBox.dart';

class UserModule extends StatelessWidget {
  //const UserModule({super.key});

  // final Module module;

  // const UserModule(this.module);

  var myIterable = MyIterable<List>([
    [
      'Gare',
      'android/app/src/zona/assets/coppa.png',
    ],
    ['Tracce', 'android/app/src/zona/assets/percorso.png'],
    [
      'Badges',
      'android/app/src/zona/assets/premio.png',
    ],
    [
      'Bici',
      'android/app/src/zona/assets/bici.png',
    ],
  ]);

  final List<RouteConfig> routeConfigs = [
    RouteConfig('Gare', const GareScreen()),
    RouteConfig('Tracce', const TracceScreen()),
    RouteConfig('Badges', const BadgeScreen()),
    RouteConfig('Bici', const BiciScreen()),
    // Aggiungi altre rotte personalizzate qui
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 180,
      child: Row(
        children: [
          // Flexible(
          //     flex: 1,
          //     child: Container(
          //       // color: Colors.amber,
          //       child: Column(
          //         children: [
          //           Container(
          //               padding: EdgeInsets.all(8),
          //               decoration: BoxDecoration(
          //                   border: Border.all(
          //                       color: Colors.grey.shade300, width: 2),
          //                   color: Colors.black,
          //                   shape: BoxShape.circle),
          //               child: const Icon(
          //                 Icons.play_arrow,
          //                 size: 30,
          //                 color: Colors.white,
          //               )),
          //               //crea il palyer con la lista di  linee verticali
          //           Expanded(
          //               child: Column(
          //             children: List.generate(
          //                 20,
          //                 (index) => Expanded(
          //                         child: Container(
          //                       width: 2,
          //                       color: index % 2 == 0
          //                           ? Colors.transparent
          //                           : Colors.grey.shade300,
          //                     ))),
          //           )),
          //           const Icon(Icons.lock,size: 30,
          //                 color: Colors.white,)
          //         ],
          //       ),
          //     )),
          // Flexible(
          //     flex: 5,
          //     child: SingleChildScrollView(
          //       child: Column(
          //         children: [
          //           Bici(),
          //           SizedBox(
          //             height: 15,
          //           ),
          //           Gare(),
          //           SizedBox(
          //             height: 15,
          //           ),
          //           Badges(),
          //           SizedBox(
          //             height: 15,
          //           ),
          //           Tracce()

          //           // InkWell(
          //           //   onTap: () {

          //           //   },
          //           //   child: Container(
          //           //     decoration: BoxDecoration(
          //           //       borderRadius: BorderRadius.circular(20),
          //           //       border: Border.all(color: module.moduleBorder, width: 2),
          //           //       color: module.moduleBg,
          //           //     ),
          //           //     // color: Colors.cyan,
          //           //     child: Column(
          //           //       crossAxisAlignment: CrossAxisAlignment.start,
          //           //       children: [
          //           //         Padding(
          //           //           padding: const EdgeInsets.all(8.0),
          //           //           child: Center(
          //           //             child: Image.asset(
          //           //                 'android/app/src/zona/assets/coppa.png',
          //           //                 height: 50,
          //           //                 width: 50),
          //           //           ),
          //           //         ),
          //           //         Center(
          //           //             child: Text(
          //           //           Strings.APP_TAG_GARE,
          //           //           style: TextStyle(
          //           //               color: Colors.grey.shade500,
          //           //               fontWeight: FontWeight.bold,
          //           //               fontSize: 22),
          //           //         )),
          //           //         Divider(color: Colors.grey.withOpacity(0.8)),
          //           //         Center(
          //           //             child: Text(
          //           //           Strings.APP_TAG_GARE_DESC,
          //           //           style: TextStyle(fontSize: 18),
          //           //         )),
          //           //       ],
          //           //     ),
          //           //   ),
          //           // ),
          //         ],
          //       ),
          //     )),

          Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.all(25),
                  itemCount: myIterable.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                  itemBuilder: ((context, index) {
                    // return Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Container(color: Colors.blue),
                    // );
                    return InkWell(
                      onTap: () {
                        // Recupera la rotta corrispondente all'oggetto selezionato
                        RouteConfig routeConfig = routeConfigs[index];

                        // Naviga alla rotta corrispondente
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => routeConfig.page),
                        );
                      },
                      child: SmartDevBox(
                          smtDevboxName: myIterable.elementAt(index)[0],
                          iconPath: myIterable.elementAt(index)[1]),
                    );
                  }))),
        ],
      ),
    );
  }
}

// Classe per definire una rotta personalizzata
class RouteConfig {
  final String name;
  final Widget page;

  RouteConfig(this.name, this.page);
}
