import 'package:flutter/material.dart';
import 'package:pizzaria/screens/bookTable/book_success.dart';
import 'package:intl/intl.dart';

class BookStep4 extends StatelessWidget {
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
            value: 1,
            semanticsLabel: 'Linear progress indicator',
            minHeight: 8,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Payment Method',
              style: TextStyle(
                  //color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 40),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
              'Total: 11.68€',
              style: TextStyle(
                  //color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 28),
            ),
            const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 50,
              ),
              title: Text('Visa'),
              //subtitle: Text('8.50€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 50,
              ),
              title: Text('Mastercard'),
              //subtitle: Text('3.18€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 50,
              ),
              title: Text('Paypal'),
              //subtitle: Text('3.18€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 50,
              ),
              title: Text('MB Way'),
              //subtitle: Text('3.18€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          
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
                              child: const Text('FINALIZE'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BookSucess()),
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
