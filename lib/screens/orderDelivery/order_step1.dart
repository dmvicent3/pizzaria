import 'package:flutter/material.dart';
import 'package:pizzaria/screens/bookTable/book_step2.dart';
import 'package:intl/intl.dart';
import 'package:pizzaria/screens/orderDelivery/order_step2.dart';
import 'package:pizzaria/screens/login.dart';

class OrderStep1 extends StatelessWidget {
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Pizzaria"),
      ),
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          LinearProgressIndicator(
            backgroundColor: Colors.grey,
            //color: Colors.deepOrangeAccent,
            value: 0.25,
            semanticsLabel: 'Linear progress indicator',
            minHeight: 8,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Deliver to',
              style: TextStyle(
                  //color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 40),
            ),
          ),
          const SizedBox(height: 20),
          Container(
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
                Row(children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                          keyboardType: TextInputType.multiline,
                          minLines: 2,
                          maxLines: 2,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Delivery note/Instructions',
                          )),
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
                        child: const Text('NEXT'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderStep2()),
                          );
                        },
                      ))),
            ],
          ),
          const SizedBox(height: 20),
        ]),
      ));
}
