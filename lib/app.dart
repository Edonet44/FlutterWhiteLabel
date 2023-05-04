import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'flavors.dart';
import 'pages/auth/login_screen.dart';

//test login con keycloak quado il test è finito eliminare l'import
import 'pages/auth/login_testkeycloack.dart';
import 'pages/my_home_page.dart';
import 'widgets/splash_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //inizio dell'applicazione
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: F.title,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen()
        //loginpage
        //LoginPage()
        //screen for keycloak testing
        //LoginScreen()
        //SplashScreen()
        //old homepage
        // MyHomePage()
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
