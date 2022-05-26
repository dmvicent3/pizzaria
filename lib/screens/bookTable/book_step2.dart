import 'package:flutter/material.dart';
import 'package:pizzaria/screens/bookTable/book_step3.dart';
import 'package:intl/intl.dart';

class BookStep2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller;
    _controller = new TextEditingController(text: '1');
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Pizzaria"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              LinearProgressIndicator(
                backgroundColor: Colors.grey,
                //color: Colors.deepOrangeAccent,
                value: 0.5,
                semanticsLabel: 'Linear progress indicator',
                minHeight: 8,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Select a Table',
                  style: TextStyle(
                      //color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 40),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/sign_in_bg.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Number of people:",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w700))
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700),
                                  )),
                            ),
                            Container(
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  controller: _controller,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                      bottom: 40 / 2, // HERE THE IMPORTANT PART
                                    ),
                                    border: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.deepOrange),
                                    ),
                                    //labelText: this.label,
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                )),
                            Container(
                              width: 40,
                              height: 40,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700),
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
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
                                    builder: (context) => BookStep3()),
                              );
                            },
                          ))),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),

          /*Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                  'Select a Table',
                  style: TextStyle(
                      //color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 40),
                ),
              ),
             
            ]),
      */
        ));
  }
}
