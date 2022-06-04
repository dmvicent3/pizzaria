import 'package:flutter/material.dart';
import 'package:pizzaria/screens/bookTable/book_step3.dart';
import 'package:pizzaria/screens/bookTable/menu.dart';

import 'package:intl/intl.dart';

class PizzaItemMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller;
    _controller = new TextEditingController(text: '1');
    return Scaffold(
        // backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Pizzaria"),
        ),
        body: Container(
            /* decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/sign_in_bg.png"),
              fit: BoxFit.cover,
            ),
          ),*/
            child: SingleChildScrollView(
                child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/sign_in_bg.png"),
                        fit: BoxFit.cover,
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: Container(
                      //height: 300,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(children: [
                              Text(
                                'Pizza 1',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24),
                              ),
                            ]),
                            Column(children: [
                              Row(
                                  // mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                    )
                                  ]),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    child: const Text(
                                      'Read Reviews',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    onPressed: () {},
                                  )
                                ],
                              )
                            ]),
                          ]),
                    ))
              ],
            ),
            Container(
                child: Column(
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Text("Quantity:", style: TextStyle(fontSize: 18))
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
                                    fontSize: 25, fontWeight: FontWeight.w700),
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
                                  fontSize: 24, fontWeight: FontWeight.w700),
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
                                    fontSize: 25, fontWeight: FontWeight.w700),
                              )),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Size: ", style: TextStyle(fontSize: 18))]),
                MyRadioButton(),
                const SizedBox(height: 20),
                Text("Ingredients", style: TextStyle(fontSize: 18)),
                const Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                    title: Text('Tomato'),
                    subtitle: Text('0.49€', style: TextStyle(fontSize: 16)),
                    trailing: Icon(Icons.close),
                    //isThreeLine: true,
                  ),
                ),
                const Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                    title: Text('Cheese'),
                    subtitle: Text('0.89€', style: TextStyle(fontSize: 16)),
                    trailing: Icon(Icons.close),
                    //isThreeLine: true,
                  ),
                ),
                const Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      size: 50,
                    ),
                    title: Text('Ham'),
                    subtitle: Text('1.59€', style: TextStyle(fontSize: 16)),
                    trailing: Icon(Icons.close),
                    //isThreeLine: true,
                  ),
                ),
                const SizedBox(height: 20),
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
                              child: const Text('ADD TO CART'),
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
            ))
          ],
        ))));
  }
}

enum RadioButtonOptions { small, medium, large }

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({Key? key}) : super(key: key);

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  RadioButtonOptions? _character = RadioButtonOptions.small;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          title: const Text('Small'),
          leading: Radio<RadioButtonOptions>(
            value: RadioButtonOptions.small,
            groupValue: _character,
            onChanged: (RadioButtonOptions? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ),
      Expanded(
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          title: const Text('Medium'),
          leading: Radio<RadioButtonOptions>(
            value: RadioButtonOptions.medium,
            groupValue: _character,
            onChanged: (RadioButtonOptions? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ),
      Expanded(
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          title: const Text('Large'),
          leading: Radio<RadioButtonOptions>(
            value: RadioButtonOptions.large,
            groupValue: _character,
            onChanged: (RadioButtonOptions? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      )
    ]);
  }
}
