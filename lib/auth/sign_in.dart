import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:food_app/screens/home/home_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  Future<void> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: [
          'email'
        ],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final User user = (await _auth.signInWithCredential(credential)).user;
      print("signed in" + user.displayName);

      return user;
    } catch (e) {
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/app.jpg')),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 400,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('inicia sesión para continuar..'),
                    Text(
                      'Nutrición H',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.green.shade900,
                              offset: Offset(3, 3),
                            )
                          ]),
                    ),
                    Column(
                      children: [
                        SignInButton(
                          Buttons.Apple,
                          text: "Iniciar con Apple",
                          onPressed: () {},
                        ),
                        SignInButton(
                          Buttons.Google,
                          text: "Iniciar con Google",
                          onPressed: () {
                            _googleSignUp().then((value) => Navigator.of(context
                            ).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            ),
                            );
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Al iniciar sesión, aceptas nuestros',
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                      ],
                    ),
                    Text(
                      'Términos y Política de Privacidada',
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
