import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'app_text.dart';

class HomeAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const HomeAppBar({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.green.withOpacity(0.2), // Colore superiore (più chiaro)
            Colors.green.withOpacity(0.8), // Colore inferiore (più scuro)
          ],
        ),
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Builder(builder: (context) {
            return ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green, // Colore del testo del pulsante
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      8), // Opzionale: aggiungi una forma arrotondata
                ),
              ),
              onPressed: () {
                scaffoldKey.currentState?.openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              label: const Text(''),
            );
          }),
          Padding(
            padding: EdgeInsets.only(left: 20),
            // child: Image.asset(
            //   "android/app/src/zona/assets/logo.png",
            //   width: 80,
            //   height: 80,
            // ),
          ),
          AppText(
            text: "GoodGo",
            size: 30,
            color: Color.fromARGB(249, 85, 60, 14),
          ),
          Spacer(),
          InkWell(
            onTap: (() {}),
            child: const Icon(
              Icons.people,
              size: 35,
              color: Color.fromARGB(255, 25, 26, 25),
            ),
          )
        ],
      ),
    );
  }
}
