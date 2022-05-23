import 'package:flutter/material.dart';
import 'package:pizzaria/screens/login.dart';

class Register extends StatelessWidget {
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/sign_in_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Sign-up',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 40),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            color: const Color.fromARGB(204, 38, 39, 44),
            child: Row(children: [
              Expanded(
                  child: Column(children: [
                Row(children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 20, 5, 10),
                      child: Input("First name", false),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(5, 20, 10, 10),
                      child: Input("Last name", false),
                    ),
                  )
                ]),
                Row(children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Input("Email", false),
                    ),
                  )
                ]),
                Row(children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Input("Password", true),
                    ),
                  )
                ]),
                Row(children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Input("Confirm password", true),
                    ),
                  )
                ]),
                Row(children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Input("Phone number", false),
                    ),
                  )
                ]),
                Row(children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Input("Address", false),
                    ),
                  )
                ]),
                Row(children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Input("City", false),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Input("Postal code", false),
                    ),
                  )
                ]),
                const SizedBox(height: 20),
              ]))
            ]),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                  child: Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: const Text('REGISTER'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                      ))),
            ],
          ),
          const SizedBox(height: 20),
        ]),
      ));
}
