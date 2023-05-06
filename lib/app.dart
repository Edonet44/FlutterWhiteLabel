import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:goodgo/pages/OnBoardScreen.dart';
import 'flavors.dart';
import 'pages/auth/Login_screen.dart';
import 'pages/auth/old/login_screen2.dart';
//test login con keycloak quado il test è finito eliminare l'import
import 'pages/auth/old/login_testkeycloack.dart';
import 'pages/auth/old/my_home_page.dart';
import 'widgets/widgt_splash_screen.dart';

///Classe App dove inizia il punto di ingresso della Applicazione viene passata la classe Flavor
///

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    //punto ingresso della applicazione manca la gestione dei Theme (dark light)
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: F.title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:

            //QUANDO SI VUOLE GESTIRE UNA PARTE DEL PUNTO DI ENTRATA BASTA TOGLIERE IL COMMENTO

            //OnBoard Screen gestione dell onboardscreen
            const OnBoardScreen()

        //splash Screen iniziale che punta allo [SplashCustomButton] che va alla login
        //const SplashScreen()

        //Login old senza splashscreen
        //CARTELLA PAGES-AUTH-OLD->login_screen2.dart
        //const LoginPage()

        //Login nuova senza splashScreen
        //CARTELLA PAGES-AUTH-Login_screen.dart
        //const Login_Page()

        //Login test keycloak
        //CARTELLA PAGES-AUTH-OLD->login_screen2.dart
        //const LoginScreen()

        //homepage vecchia
        ///CARTELLA PAGES-AUTH-OLD->my_home_page.dart
        //const MyHomePage()

        // _flavorBanner(
        //   child: const MyHomePage(),
        //   //show: kDebugMode,
        // ),
        );
  }
// se true mostra il banner con il nome altrimenti mostra il logo
  // Widget _flavorBanner({
  //   required Widget child,
  //   bool show = false,
  // }) =>
  //     show
  //         ? Banner(
  //       child: child,
  //       location: BannerLocation.topStart,
  //       message: F.name,
  //       color: Colors.green.withOpacity(0.6),
  //       textStyle: const TextStyle(
  //           fontWeight: FontWeight.w700,
  //           fontSize: 12.0,
  //           letterSpacing: 1.0),
  //       textDirection: TextDirection.ltr,
  //     )
  //         : Container(
  //       child: child,
  //     );
}
