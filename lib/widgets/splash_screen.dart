import 'package:flutter/material.dart';
import 'package:goodgo/flavors.dart';
import 'package:goodgo/pages/auth/login_screen.dart';

import 'buttons/widgt_button.dart';

//oggetto per la gestione dello splashscreen

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // mostra il logo per un secondo
    // Future.delayed(const Duration(seconds: 10)).then((_) {
    //   Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(
    //         builder: (BuildContext context) =>
    //             const LoginPage() // Sostituisci LogPage con il nome della tua pagina di destinazione
    //         ),
    //   );
    // });
    // return Scaffold(
    //   // backgroundColor: F.background ?? Colors.white,
    //   body: Container(
    //     height: MediaQuery.of(context).size.height,
    //     width: MediaQuery.of(context).size.width,
    //     child: Image.asset(
    //       F.splshimg,
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    // );

 return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            F.splshimg,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(),
            ),
          ),
        ],
      ),
    );
  }
}

