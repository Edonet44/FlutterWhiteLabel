import 'package:flutter/material.dart';
import 'package:goodgo/flavors.dart';
import 'package:goodgo/pages/auth/login_screen.dart';

//oggetto per la gestione dello splashscreen

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // mostra il logo per un secondo
    Future.delayed(const Duration(seconds: 7)).then((_) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) =>
                const LoginPage() // Sostituisci LogPage con il nome della tua pagina di destinazione
            ),
      );
    });
    return Scaffold(
      // backgroundColor: F.background ?? Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          F.splshimg,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
