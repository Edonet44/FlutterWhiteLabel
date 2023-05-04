import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'login_screen.dart';

//final authProvider = Provider<AuthController>((ref) => AuthController());

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  double _opacity = 0.0;
  final _formKey = GlobalKey<FormState>();
  final _mail = TextEditingController();
  final _password = TextEditingController();

  @override
  void initState() {
    super.initState();
    //aggiungi questo codice per far apparire gradualmente il modulo
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double altezza = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: Image.asset(
            'android/app/src/zona/assets/Registrazione.png',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: ListView(children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 1),
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Container(
                    margin: EdgeInsets.only(top: 10),
                    //color: Colors.amberAccent,
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: SingleChildScrollView(
                      child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: altezza * 0.04,
                                  width:
                                      MediaQuery.of(context).size.width * 0.06),
                              const Text("Modulo di Iscrizione",
                                  style: TextStyle(
                                      fontSize: 40,
                                      color:
                                          Color.fromARGB(255, 247, 241, 241))),

                              SizedBox(height: altezza * 0.04),
                              //campo nome
                              TextFormField(
                                  keyboardType: TextInputType.name,
                                  controller: _mail,
                                  decoration: const InputDecoration(
                                    hintText: 'Mail',
                                    hintStyle: TextStyle(
                                      color: Colors
                                          .white, // Imposta il colore del testo dell'hint su bianco
                                    ),
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2.0,
                                      ),
                                    ),
                                  ),
                                  style: TextStyle(color: Colors.white),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  //se il valore è diverso da nullo e il validatore e ok altrimenti inserisci una mail valida
                                  validator: (value) {
                                    if (value != null && value.length < 8) {
                                      return null;
                                    }
                                  }),
                              const SizedBox(height: 10),
                              //campo congome

                              TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  controller: _password,
                                  decoration: const InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                      color: Colors
                                          .white, // Imposta il colore del testo dell'hint su bianco
                                    ),
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 2.0,
                                      ),
                                    ),
                                  ),
                                  style: TextStyle(color: Colors.white),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (value) {
                                    if (value != null) {
                                      return null;
                                    }
                                  }),
                              const SizedBox(height: 10),
                              // TextFormField(
                              //     keyboardType: TextInputType.phone,
                              //     controller: _telefono,
                              //     decoration: const InputDecoration(
                              //       hintText: "Telefono",
                              //       border: OutlineInputBorder(),
                              //       enabledBorder: OutlineInputBorder(
                              //         borderSide: BorderSide(
                              //           color: Colors.white,
                              //           width: 2.0,
                              //         ),
                              //       ),
                              //     ),
                              //     autovalidateMode: AutovalidateMode.onUserInteraction,
                              //     validator: (value) {
                              //       if (value != null && value.length < 7) {
                              //         return "Devi inserire il telefono";
                              //       } else {
                              //         return null;
                              //       }
                              //     }),
                              const SizedBox(height: 10),

                              //creare anche una lista di radiobutton per la selezione dei vari pagamenti
                              //https://www.youtube.com/watch?v=WPge1ZuEeCQ
                              //const SizedBox(height: 18),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //get registrer controller
                                    _convalida_form(context);
                                  },
                                  child: const Text(
                                    'ISCRIVITI',
                                    style: TextStyle(
                                        fontFamily: 'Verdana', fontSize: 18),
                                  ),
                                ),
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Center(
                                      child: TextButton(
                                        child: const Text(
                                          'Vai al Login',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        onPressed: () {
                                          //to register page
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const LoginPage()));
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    )),
              ),
            ),
          ]),
        ),
      ]),
    );
  }

//controllo lato client del form
  void _convalida_form(BuildContext context) {
    if (_formKey.currentState!.validate()) {}
  }
}
