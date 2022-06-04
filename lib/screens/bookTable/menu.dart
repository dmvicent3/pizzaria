// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:pizzaria/screens/bookTable/book_step4.dart';
import 'package:pizzaria/screens/bookTable/pizza-item-menu.dart';
import 'package:pizzaria/screens/bookTable/drink-item-menu.dart';
import 'package:intl/intl.dart';

class AppBarLayout extends AppBar {
  final GlobalKey<ScaffoldState> _scaffoldKey;
  final String appBarTitle;
  final BuildContext context;

  AppBarLayout(this._scaffoldKey,
      {required this.appBarTitle, required this.context})
      : super(
          title: Text(appBarTitle),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            )
          ],
        );
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarLayout(
        GlobalKey(debugLabel: 'Pizzaria'),
        appBarTitle: 'Pizzaria',
        context: context,
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepOrange,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.local_pizza),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: 'Drinks',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        onTap: _onItemTapped,
      ),
    );
  }

  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    Container(child: Builder(builder: (BuildContext context) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 5),
              const SizedBox(height: 5),
              MyDropDown(),
              const SizedBox(width: 20),
            ],
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PizzaItemMenu()),
                );
              },
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Pizza 1'),
              subtitle: Text('4.99€ - 13.00€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Pizza 2'),
              subtitle: Text('4.99€ - 13.00€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Pizza 3'),
              subtitle: Text('6.49€ - 15.89€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Pizza 4'),
              subtitle: Text('5.49€ - 14.49€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Pizza 5'),
              subtitle: Text('4.99€ - 13.99€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Pizza 6'),
              subtitle: Text('4.99€ - 13.00€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Pizza 7'),
              subtitle: Text('4.99€ - 13.00€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Pizza 8'),
              subtitle: Text('6.49€ - 15.89€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
        ],
      );
    })),
    Container(child: Builder(builder: (BuildContext context) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(height: 5),
              const SizedBox(height: 5),
              MyDropDown(),
               const SizedBox(width: 20),
            ],
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DrinkItemMenu()),
                );
              },
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Drink 1'),
              subtitle: Text('1.59€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Drink 2'),
              subtitle: Text('1.99€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Drink 3'),
              subtitle: Text('1.29€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Drink 4'),
              subtitle: Text('0.89€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Drink 5'),
              subtitle: Text('1.89€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Drink 6'),
              subtitle: Text('2.09€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Drink 7'),
              subtitle: Text('1.99€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 60,
              ),
              title: Text('Drink 8'),
              subtitle: Text('1.45€', style: TextStyle(fontSize: 16)),
              trailing: Icon(Icons.arrow_right),
              //isThreeLine: true,
            ),
          ),
        ],
      );
    })),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class MyDropDown extends StatefulWidget {
  const MyDropDown({Key? key}) : super(key: key);

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  String dropdownValue = 'Name';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepOrange),
      underline: Container(
        height: 2,
        color: Colors.deepOrangeAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Name', 'Price', 'Score']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
