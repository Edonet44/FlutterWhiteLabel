//dopo lo splash screen
import 'package:flutter/material.dart';
import 'package:goodgo/pages/2Layout.dart';
import 'package:goodgo/widgets/wigt_facebook.dart';
import '../../widgets/google_log.dart';
import 'password_screen.dart';
import 'register_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: Image.asset(
            'android/app/src/zona/assets/Login.png',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(children: <Widget>[
            // Container(
            //     alignment: Alignment.center,
            //     padding: const EdgeInsets.all(10),
            //     child: const Text(
            //       'TemiCodes',
            //       style: TextStyle(
            //           color: Colors.blue,
            //           fontWeight: FontWeight.w500,
            //           fontSize: 30),
            //     )),
            Padding(padding: EdgeInsets.only(top: 200)),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                //controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: const TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                //controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),

            TextButton(
              onPressed: () {
                Future.delayed(const Duration(seconds: 1)).then((_) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Password()),
                  );
                });
              },
              child: const Text(
                'Password dimenticata?',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    //verso il provider o in questo caso con la gestione di keycloak
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Layout2()),
                    );

                    // ref
                    //     .read(LoginControllerProvider.notifier)
                    //     .login(emailController.text, passwordController.text);
                  },
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Non hai un account?',
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  child: const Text(
                    'Iscriviti',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //to register page

                    Future.delayed(Duration(seconds: 2)).then((_) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => const Register()),
                      );
                    });
                  },
                ),
              ],
            ),
            Flex(direction: Axis.horizontal, children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: FacebookSignInButton(
                    onPressed: () {},
                  ),
                ),

                // FacebookSignInButton(
                //   onPressed: () {},
                // ),
                // GoogleSignInButton(
                //   onPressed: () {},
                // )
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: GoogleSignInButton(
                    onPressed: () {},
                  ),
                ),
              ),
            ]),
            //  Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
            //     Expanded(
            //       child: Center(
            //         child: FacebookSignInButton(
            //           onPressed: () {},
            //         ),
            //       ),
            //     )
            //   ],
            // ),
          ]),
        )
      ]),
    );
  }
}
