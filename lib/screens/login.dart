import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:pizzaria/screens/register.dart';
import 'package:pizzaria/screens/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/sign_in_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Sign-in',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 40),
            ),
          ),
          Container(
            color: Color.fromARGB(204, 38, 39, 44),
            child: Row(children: [
              Expanded(
                child: Column(children: [
                  Row(children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          controller: controller,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepOrange),
                              ),
                              labelText: 'Email',
                              filled: true,
                              fillColor: Color.fromARGB(255, 38, 39, 44),
                              hintStyle: TextStyle(color: Colors.white),
                              labelStyle: TextStyle(color: Colors.white)),
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepOrange),
                              ),
                              labelText: 'Password',
                              filled: true,
                              fillColor: Color.fromARGB(255, 38, 39, 44),
                              hintStyle: TextStyle(color: Colors.white),
                              labelStyle: TextStyle(color: Colors.white)),
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: RichText(
                          textAlign: TextAlign.end,
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'Forgot password?',
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {}),
                          ]),
                        ),
                      ),
                    )
                  ]),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                              height: 50,
                              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: ElevatedButton(
                                child: const Text('LOGIN'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
                                  );
                                },
                              ))),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(children: [
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        label: const Text('LOGIN WITH GOOGLE'),
                        icon: const Icon(FontAwesomeIcons.google, size: 16.0),
                      ),
                    ))
                  ]),
                  SizedBox(height: 10),
                  Row(children: [
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                        label: const Text('LOGIN WITH TWITTER'),
                        icon: const Icon(FontAwesomeIcons.twitter, size: 16.0),
                      ),
                    ))
                  ]),
                  SizedBox(height: 20),
                ]),
              )
            ]),
          ),
          Row(
            children: <Widget>[
              const Text("Don't have an account?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500)),
              TextButton(
                child: const Text(
                  'Sign-up',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ]),
      ));
}
