import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:goodgo/flavors.dart';
import 'package:goodgo/model/generics/cl_custom_iterable.dart';
import 'package:goodgo/model/todos/cl_todos.dart';
import 'package:goodgo/pages/Dashboard.dart';
import 'package:goodgo/providers/todo_providers.dart';
import 'package:goodgo/widgets/appbar/widgt_home_appbar.dart';
import 'package:goodgo/widgets/buttons/widgt_circularbutton.dart';
import 'package:goodgo/widgets/drawer/widgt_navDrawer.dart';
import 'package:goodgo/widgets/text/app_text.dart';
import 'package:goodgo/widgets/widgt_SmartdeviceBox.dart';


class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends ConsumerState<MyHomePage> {
//variabile globale
  // GlobalKey<_MyHomePage> _scaffoldKey = GlobalKey<_MyHomePage>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final double horizontalPad = 40;
  final double verticalPad = 30;

  var myIterable = MyIterable<List>([
    [
      'Bicicletta',
      'android/app/src/zona/assets/bici.png',
    ],
    [
      'Premi',
      'android/app/src/zona/assets/coppa.png',
    ],
    [
      'Vai',
      'android/app/src/zona/assets/road.png',
    ],
    ['Percorsi', 'android/app/src/zona/assets/trees.png']
  ]);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//richiamo del todosprovider
    final todos = ref.watch(TodosProvider);

    return Scaffold(
      drawer: const Nav_drawer(),
      key: _scaffoldKey,
      backgroundColor: F.background,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.40, //PRENDE IL TOP A 40%
            child: Container(
                // color: Colors.redAccent,
                child: Stack(children: [
              //appbar
              HomeAppBar(scaffoldKey: _scaffoldKey),
              const SizedBox(height: 5),
              Column(children: [
                Expanded(
                  child: Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: CustomCircularButton(
                        icon: Icons.play_arrow,
                        onPressed: () {
                          // azione da eseguire quando il bottone viene premuto
                          //Registra i dati

                          // per ora passa al nuovo layout
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Dashboard()),
                          );
                        },
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ),
                ),
              ]),
            ])),
          ),
          Align(
            alignment: const Alignment(0, -0.6),
            child: Text(''),
          ),
          FractionallySizedBox(
              alignment: Alignment.bottomCenter,
              heightFactor: 0.65, //IL BOTTOM A 65%
              child: Container(
                decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                    color: Color.fromARGB(255, 3, 83, 27).withOpacity(0.8)),
                child: Column(
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: horizontalPad),
                        child: AppText(text: '')),
                    Expanded(
                        child: GridView.builder(
                            padding: const EdgeInsets.all(25),
                            itemCount: myIterable.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 1 / 1.2),
                            itemBuilder: ((context, index) {
                              // return Padding(
                              //   padding: const EdgeInsets.all(8.0),
                              //   child: Container(color: Colors.blue),
                              // );
                              return SmartDevBox(
                                  smtDevboxName: myIterable.elementAt(index)[0],
                                  iconPath: myIterable.elementAt(index)[1]);
                            }))),
                    // container per il richiamo ApiTodos
                    //               // Container(
                    //               //     height: 400, width: 300, child: _widgetUser(ref, todos))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

//funzione che recupera i dati delle api e visualizza a schermo con un ListView.builder
Widget _widgetUser(WidgetRef ref, AsyncValue<List<Todos>> todos) {
  return todos.when(
    data: (user) {
      return ListView.builder(
        itemCount: user.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(user[index].title));
        },
      );
    },
    error: (Object error, StackTrace stackTrace) {
      return const Center(child: Text('Errore'));
    },
    loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    },
  );
}
// return Scaffold(
    //     key: _scaffoldKey,
    //     drawer: Nav_drawer(),
    //     backgroundColor: F.background,
    //     body: Stack(
    //         Container(
    //             decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(20),
    //                 color: Colors.white),
    //             child: Column(
    //               children: [
    //                 const HomeAppBar(),
    //                 const SizedBox(height: 5),
    //                 Container(
    //                   child: CustomCircularButton(
    //                     icon: Icons.play_arrow,
    //                     onPressed: () {
    //                       // azione da eseguire quando il bottone viene premuto
    //                       //Registra i dati
    //                     },
    //                     height: 150,
    //                     width: 150,
    //                   ),
    //                 ),
    //                 const Divider(
    //                   color: Colors.amber,
    //                   thickness: 2,
    //                   height: 4,
    //                 ),
    //               ],
    //             )),
    //         Container(
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(20), color: Colors.white),
    //           child: Column(
    //             children: [
    //               Padding(
    //                   padding: EdgeInsets.symmetric(horizontal: horizontalPad),
    //                   child: AppText(text: '')),
    //               Expanded(
    //                   child: GridView.builder(
    //                       padding: const EdgeInsets.all(25),
    //                       itemCount: myIterable.length,
    //                       gridDelegate:
    //                           const SliverGridDelegateWithFixedCrossAxisCount(
    //                               crossAxisCount: 2, childAspectRatio: 1 / 1.2),
    //                       itemBuilder: ((context, index) {
    //                         // return Padding(
    //                         //   padding: const EdgeInsets.all(8.0),
    //                         //   child: Container(color: Colors.blue),
    //                         // );
    //                         return SmartDevBox(
    //                             smtDevboxName: myIterable.elementAt(index)[0],
    //                             iconPath: myIterable.elementAt(index)[1]);
    //                       }))),

    //               //per il richiamo Api
    //               // Container(
    //               //     height: 400, width: 300, child: _widgetUser(ref, todos))
    //             ],
    //           ),
    //         )));
/*
 
  // Padding(
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Image.asset('android/app/src/zona/assets/logo.png',
                //           height: 30),
                //       Icon(Icons.person, size: 30)
                //     ],
                //   ),
                // ),
                */

// class MyHomePage extends ConsumerWidget {
//   const MyHomePage({super.key});
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
// //uso del provider utente
//     final user = ref.watch(userListProvider);

//     return Scaffold(
//         backgroundColor: F.background,
//         // appBar: AppBar(
//         //   title: Text(F.title),
//         // ),
//         body: SafeArea(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 25),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Image.asset('android/app/src/zona/assets/logo.png',
//                         height: 45),
//                     Icon(Icons.person, size: 45)
//                   ],
//                 ),
//               ),
// const SizedBox(height: 20),
// Padding(padding: const EdgeInsets.symmetric(horizontal: ))
//               CustomCircularButton(
//                 icon: Icons.play_arrow,
//                 onPressed: () {
//                   // azione da eseguire quando il bottone viene premuto
//                   //Registra i dati
//                 },
//               ),
//               Center(
//                 child: Text(
//                   'Hello ${F.title}',
//                 ),
//               ),
//               //logo
//               Container(
//                 child: Image.asset(
//                   '${F.img}',
//                   height: 100,
//                   width: 100,
//                 ),
//               ),
//               //   _widgetUser(ref, user)!
//             ],
//           ),
//         ));
//   }
// }

//gestione Future
// Widget _widgetUser(WidgetRef, AsyncValue<List<Todos>>todos) {
//   todos.when(data: (user) {
//     return ListView.builder(
//       itemCount: user.length,
//       itemBuilder: (context, index) {
//         return ListTile(title: Text(user[index].todos.toString()));
//       },
//     );
//   }, error: (Object error, StackTrace stackTrace) {
//     const Center(child: Text('errore'));
//   }, loading: () {
//     const Center(
//       child: CircularProgressIndicator(),
//     );
//   });
// }
