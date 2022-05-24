import 'package:flutter/material.dart';
import 'package:pizzaria/screens/login.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepOrange,
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Pizzaria"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/sign_in_bg.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.account_circle,
                                size: 80,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text('Firstname',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontWeight: FontWeight.w400)),
                                Text('Lastname',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ],
                        )
                      ])),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Exit'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/sign_in_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: [
              Stack(children: [
                Carousel(),
                Container(
                  height: height * 1.8 - height,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            const Expanded(child: SizedBox(height: 10)),
                            Expanded(
                                child: Container(
                                    height: 40,
                                    child: ElevatedButton(
                                      child: const Text('CHECK MENU'),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Home()),
                                        );
                                      },
                                    ))),
                            const Expanded(child: SizedBox(height: 10)),
                          ],
                        ),
                        SizedBox(height: 20),
                      ]),
                ),
              ]),
              Expanded(
                  child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            },
                            child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Text("Book a Table",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))
                                  ],
                                ),
                                width: (height / 2) - 20,
                                height: 143,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/sign_in_bg.png"),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          )
                        ]),
                        Stack(children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            },
                            child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Text("Order Delivery",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))
                                  ],
                                ),
                                width: (height / 2) - 20,
                                height: 143,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/sign_in_bg.png"),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          )
                        ]),
                      ]),
                  SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            },
                            child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Text("My bookings",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))
                                  ],
                                ),
                                width: (height / 2) - 20,
                                height: 143,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/sign_in_bg.png"),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          )
                        ]),
                        Stack(children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );
                            },
                            child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Text("My Orders",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))
                                  ],
                                ),
                                width: (height / 2) - 20,
                                height: 143,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/sign_in_bg.png"),
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          )
                        ]),
                      ]),
                ],
              ))
            ])),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselState();
  }
}

class _CarouselState extends State<Carousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4];
    final double height = MediaQuery.of(context).size.width;
    return Column(children: [
      Stack(
        children: [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                height: height * 1.8 - height,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: imgList
                .map(
                  (item) => Container(
                    // margin: EdgeInsets.all(5.0),
                    child: Image.network(item,
                        fit: BoxFit.cover, height: height * 1.8 - height),
                  ),
                )
                .toList(),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
            ],
          )
        ],
      )
    ]);
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
  'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
  'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
];
