import 'package:flutter/material.dart';
import 'package:pizzaria/screens/bookTable/book_step4.dart';
import 'package:intl/intl.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    Container(
        child: Column(
      children: [
        Card(
          child: ListTile(
            leading: Icon(
              Icons.account_circle,
              size: 60,
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
              size: 60,
            ),
            title: Text('Drink 1 x2'),
            subtitle: Text('3.18€', style: TextStyle(fontSize: 16)),
            trailing: Icon(Icons.close),
            //isThreeLine: true,
          ),
        ),
      ],
    )),
    Container(
      child: const Text("data2"),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Icon customIcon = const Icon(Icons.search);
    Widget customSearchBar = const Text('My Personal Journal');
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(Icons.cancel);
                  customSearchBar = const ListTile(
                    leading: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 28,
                    ),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: 'type in journal name...',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                } else {
                  customIcon = const Icon(Icons.search);
                  customSearchBar = const Text('My Personal Journal');
                }
              });
            },
            icon: const Icon(Icons.search),
          )
        ],
        title: const Text('Pizzaria'),
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
}
