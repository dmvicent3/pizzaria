import 'package:flutter/material.dart';
import 'package:pizzaria/screens/bookTable/book_step4.dart';
import 'package:pizzaria/screens/bookTable/menu.dart';

import 'package:intl/intl.dart';
import 'package:pizzaria/screens/orderDelivery/order_step4.dart';

class OrderStep3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    // backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Pizzaria"),
      ),
      body: Container(
        /*  decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/sign_in_bg.png"),
            fit: BoxFit.cover,
          ),
        ),*/
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          LinearProgressIndicator(
            backgroundColor: Colors.grey,
            //color: Colors.deepOrangeAccent,
            value: 0.75,
            semanticsLabel: 'Linear progress indicator',
            minHeight: 8,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Your order',
              style: TextStyle(
                //color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 40),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 50,
              ),
              title: Text('M Pizza 1, no tomato'),
              subtitle: Text('8.50€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.close),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 50,
              ),
              title: Text('Drink 1 x2'),
              subtitle: Text('3.18€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.close),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu()),
                  );
                },
                leading: Icon(
                  Icons.add,
                  size: 50,
                  //color: Colors.deepOrange,
                ),
                title: Text('Add an item'),
                // subtitle: Text('Here is a second line'),
                trailing: Icon(Icons.arrow_right)),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Text('Total: 8.50€',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700)))),
                    Expanded(
                        child: Container(
                            height: 50,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              child: const Text('CHECK OUT'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OrderStep4()),
                                );
                              },
                            ))),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
        ]),
      ));
}
