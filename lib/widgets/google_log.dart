import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//oggetto che crea un pulsante elevatedbutton con immagine di google e passa una funzione
//in questo caso utilizza poi nel login_screen il

class GoogleSignInButton extends StatefulWidget {
  final Function onPressed;

  const GoogleSignInButton({Key? key, required this.onPressed})
      : super(key: key);

  @override
  State<GoogleSignInButton> createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed as void Function()?,
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: Colors.white,
        padding: const EdgeInsets.all(8.0),
      ),
      child: Container(
        width: 48.0,
        height: 48.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Center(
          child: Image.asset(
            'android/app/src/zona/assets/G_Logo.png',
            width: 24.0,
            height: 24.0,
          ),
        ),
      ),
    );
  }
}
