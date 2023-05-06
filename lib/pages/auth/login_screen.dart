import 'package:flutter/material.dart';
import 'package:goodgo/widgets/buttons/widgt_google_log.dart';
import 'package:goodgo/widgets/buttons/widgt_mail.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //prima colonna con logo
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'android/app/src/zona/assets/logo.png',
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
          //seconda colonna con i bottoni per il login
          Column(
            //elevated button
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GoogleSignInButton(onPressed: () {}, choice: false),
                ),
              ),
              MailSignInButton(onPressed: () {})
            ],
          )
        ],
      ),
    ));
  }
}
