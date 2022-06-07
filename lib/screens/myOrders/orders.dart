import 'package:flutter/material.dart';
import 'package:pizzaria/screens/bookTable/book_step4.dart';
import 'package:pizzaria/screens/bookTable/menu.dart';

import 'package:intl/intl.dart';
import 'package:pizzaria/screens/orderDelivery/order_step4.dart';

class Orders extends StatelessWidget {
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
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Your Orders',
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

          const SizedBox(height: 20),
        ]),
      ));
}
