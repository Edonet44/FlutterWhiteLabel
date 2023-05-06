import 'package:flutter/material.dart';
import 'package:goodgo/backend/api/api_services.dart';
import 'package:goodgo/model/keycloak/keycloack.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final ApiServices keycloak = ApiServices();

//test con semplici stringhe
  final String user='usertest';
  final String password='testtest23';
  @override
  void initState() {
    super.initState();
  }

  void login() async {
    try {
      await keycloak.getKeyCloack_Login(user, password);

      // Login effettuato con successo, naviga alla schermata di benvenuto
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    } catch (e) {
      // Errore durante il login, gestisci l'errore
      print('Errore durante il login: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: login,
          child: Text('Effettua il login'),
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Benvenuto')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Benvenuto!'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
