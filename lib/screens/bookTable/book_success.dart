import 'package:flutter/material.dart';
import 'package:pizzaria/screens/Home.dart';
import 'package:intl/intl.dart';

class BookSucess extends StatelessWidget {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, 
          children: [
          Container(
            //alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Success',
              style: TextStyle(
                  //color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 40),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            //alignment: Alignment.centerLeft,
            //color: const Color.fromARGB(204, 38, 39, 44),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                Text("Booking Details: ",
                    style: TextStyle(
                        //color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18)),
                        SizedBox(height: 10),
                Text("  - 2 People"),
                Text("  - 24th august at 2:20pm"),
                Text("  - Table 7"),
                SizedBox(height: 20),
                Text("Order Details: ",
                    style: TextStyle(
                        //color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18)),
                        SizedBox(height: 10),
                Text("  - M Pizza 1, no tomato      8.50€"),
                Text("  - Drink 1 x2                3.18€"),
                SizedBox(height: 10),
                Text("                       Total: 11.68€"),
               
              ]))
            ]),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                            height: 50,
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              child: const Text('RETURN'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()),
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
