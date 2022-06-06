import 'package:flutter/material.dart';
import 'package:pizzaria/screens/bookTable/book_step2.dart';
import 'package:intl/intl.dart';
import 'package:pizzaria/screens/orderDelivery/order_step3.dart';

class OrderStep2 extends StatelessWidget {
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
            value: 0.5,
            semanticsLabel: 'Linear progress indicator',
            minHeight: 8,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Set Date and Time',
              style: TextStyle(
                //color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 40),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            //color: const Color.fromARGB(204, 38, 39, 44),
            child: Row(children: [
              Expanded(
                  child: Column(children: [
                    Row(children: [
                      Expanded(
                          child: Container(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: DatePicker()))
                    ]),
                    Row(children: [
                      Expanded(
                          child: Container(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: TimePicker()))
                    ]),
                    const SizedBox(height: 20),
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
                              child: const Text('NEXT'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OrderStep3()),
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

class DatePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DatePicker();
  }
}

class _DatePicker extends State<DatePicker> {
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: dateinput, //editing controller of this TextField
      decoration: const InputDecoration(
          icon: Icon(Icons.calendar_today), //icon of text field
          labelText: "Enter Date" //label text of field
      ),
      readOnly: true, //set it true, so that user will not able to edit text
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(
                2000), //DateTime.now() - not to allow to choose before today.
            lastDate: DateTime(2101));

        if (pickedDate != null) {
          print(
              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          print(
              formattedDate); //formatted date output using intl package =>  2021-03-16
          //you can implement different kind of Date Format here according to your requirement

          setState(() {
            dateinput.text =
                formattedDate; //set output date to TextField value.
          });
        } else {
          print("Date is not selected");
        }
      },
    );
  }
}

class TimePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TimePicker();
  }
}

class _TimePicker extends State<TimePicker> {
  TextEditingController timeinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    timeinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: timeinput, //editing controller of this TextField
      decoration: const InputDecoration(
          icon: Icon(Icons.timer), //icon of text field
          labelText: "Enter Time" //label text of field
      ),
      readOnly: true, //set it true, so that user will not able to edit text
      onTap: () async {
        TimeOfDay? pickedTime = await showTimePicker(
          initialTime: TimeOfDay.now(),
          context: context,
        );

        if (pickedTime != null) {
          print(pickedTime.format(context)); //output 10:51 PM
          DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
          //converting to DateTime so that we can further format on different pattern.
          print(parsedTime); //output 1970-01-01 22:53:00.000
          String formattedTime = DateFormat('HH:mm:ss').format(parsedTime);
          print(formattedTime); //output 14:59:00
          //DateFormat() is from intl package, you can format the time on any pattern you need.

          setState(() {
            timeinput.text = formattedTime; //set the value of text field.
          });
        } else {
          print("Time is not selected");
        }
      },
    );
  }
}
