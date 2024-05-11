import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zomato_new/corosal_list.dart';
import 'package:zomato_new/splash.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Splash(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  // Position? _position;
  // String _locationName = 'Fetching Location...';

  // @override
  // void initState() {
  //   super.initState();
  //   _getCurrentLocation();
  // }

  // Future<void> _getCurrentLocation() async {
  //   LocationPermission permission = await _getLocationPermission();
  //   if (permission == LocationPermission.denied ||
  //       permission == LocationPermission.deniedForever) {
  //     setState(() {
  //       _locationName = 'Location permission denied.';
  //     });
  //     return;
  //   }

  //   try {
  //     Position position = await Geolocator.getCurrentPosition(
  //         desiredAccuracy: LocationAccuracy.low);
  //     List<Placemark> placemarks =
  //         await placemarkFromCoordinates(position.latitude, position.longitude);
  //     setState(() {
  //       _position = position;
  //       _locationName = placemarks[0].name ?? 'Unknown';
  //     });
  //   } catch (e) {
  //     print('Error getting current location: $e');
  //     setState(() {
  //       _locationName = 'Error fetching location.';
  //     });
  //   }
  // }

  // Future<LocationPermission> _getLocationPermission() async {
  //   LocationPermission permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //   }
  //   return permission;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 232, 228, 228),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text(
            'ZOMATO',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              iconSize: 33,
            )
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.search),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          child: AnimatedTextKit(
                            animatedTexts: [
                              RotateAnimatedText('Search   "Cake"',
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 154, 152, 152),
                                      fontWeight: FontWeight.bold)),
                              RotateAnimatedText('Search   "Ice cream"',
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 154, 152, 152),
                                      fontWeight: FontWeight.bold)),
                              RotateAnimatedText('Search   "Briyani"',
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 154, 152, 152),
                                      fontWeight: FontWeight.bold)),
                              RotateAnimatedText('Search   "Pizza"',
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 154, 152, 152),
                                      fontWeight: FontWeight.bold)),
                              RotateAnimatedText('Search   "Fish"',
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 154, 152, 152),
                                      fontWeight: FontWeight.bold)),
                              RotateAnimatedText('Search   "Meals"',
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 154, 152, 152),
                                      fontWeight: FontWeight.bold)),
                            ],
                            onTap: () {
                              print("Tap Event");
                            },
                          ),
                        ),
                      ),
                      const Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.keyboard_voice_outlined),
                              )))
                    ],
                  ),
                  height: 50,
                  width: double.infinity,
                ),
              ),
            ),
            Container(
                height: 255,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'asset/WhatsApp Image 2024-03-20 at 16.05.52_342e1e40.jpg'),
                        fit: BoxFit.cover))),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 5,
                      thickness: 2,
                      color: Colors.grey,
                      indent: 3,
                      endIndent: 5,
                    ),
                  ),
                  Text('FOR YOU'),
                  Expanded(
                    child: Divider(
                      height: 5,
                      thickness: 2,
                      color: Colors.grey,
                      indent: 3,
                      endIndent: 5,
                    ),
                  ),
                ],
              ),
            ),
            DefaultTabController(
                length: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 33,
                    width: 255,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    child: TabBar(
                      tabs: [
                        Container(
                            height: 40,
                            width: 95,
                            child: const Center(child: Text('Recommented')),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10))),
                        Container(
                            height: 40,
                            width: 95,
                            child: const Center(
                                child: Row(
                              children: [
                                Icon(
                                  Icons.favorite_border_outlined,
                                  size: 15,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Text('Favourites'),
                                ),
                              ],
                            )),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)))
                      ],
                    ),
                  ),
                )),
            Container(
              height: 320,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage('asset/kfc.avif'),
                                          fit: BoxFit.cover),
                                      color: const Color.fromARGB(
                                          255, 175, 171, 171),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  'KFC',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 38, 129, 41),
                                      size: 13,
                                    ),
                                    Text(
                                      '4.0',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('| 37 mins')
                                  ],
                                ),
                              ),
                              Card(
                                child: Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'asset/mcdonalds.avif'),
                                          fit: BoxFit.cover),
                                      color: const Color.fromARGB(
                                          255, 175, 171, 171),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Mcdonalds',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 38, 129, 41),
                                      size: 13,
                                    ),
                                    Text(
                                      '3.7',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('| 25 mins')
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image:
                                              AssetImage('asset/dominos2.avif'),
                                          fit: BoxFit.cover),
                                      color: const Color.fromARGB(
                                          255, 175, 171, 171),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Dominos',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 38, 129, 41),
                                      size: 13,
                                    ),
                                    Text(
                                      '3.6',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('| 26 mins')
                                  ],
                                ),
                              ),
                              Card(
                                child: Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image:
                                              AssetImage('asset/starbugs.jpeg'),
                                          fit: BoxFit.cover),
                                      color: const Color.fromARGB(
                                          255, 175, 171, 171),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Starbucks',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 38, 129, 41),
                                      size: 13,
                                    ),
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('| 42 mins')
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                child: Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage('asset/b king.jpg'),
                                          fit: BoxFit.cover),
                                      color: const Color.fromARGB(
                                          255, 175, 171, 171),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Burger King',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 38, 129, 41),
                                      size: 13,
                                    ),
                                    Text(
                                      '3.5',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('| 22 mins')
                                  ],
                                ),
                              ),
                              Card(
                                child: Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage('asset/BR.jpg'),
                                          fit: BoxFit.cover),
                                      color: const Color.fromARGB(
                                          255, 175, 171, 171),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Baskin Robbins',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 38, 129, 41),
                                      size: 13,
                                    ),
                                    Text(
                                      '4.4',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('| 15 mins')
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                child: Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image:
                                              AssetImage('asset/taco bell.jpg'),
                                          fit: BoxFit.cover),
                                      color: const Color.fromARGB(
                                          255, 175, 171, 171),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Taco Bell',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 38, 129, 41),
                                      size: 13,
                                    ),
                                    Text(
                                      '3.4',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('| 45 mins')
                                  ],
                                ),
                              ),
                              Card(
                                child: Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'asset/chicking3.jpeg'),
                                          fit: BoxFit.cover),
                                      color: const Color.fromARGB(
                                          255, 175, 171, 171),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Chicking',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 38, 129, 41),
                                      size: 13,
                                    ),
                                    Text(
                                      '5.4',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('| 30 mins')
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                child: Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image:
                                              AssetImage('asset/bonets.jpeg'),
                                          fit: BoxFit.cover),
                                      color: const Color.fromARGB(
                                          255, 175, 171, 171),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Dunkin Donuts',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 38, 129, 41),
                                      size: 13,
                                    ),
                                    Text(
                                      '3.1',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('| 23 mins')
                                  ],
                                ),
                              ),
                              Card(
                                child: Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'asset/red lobster.jpg'),
                                          fit: BoxFit.cover),
                                      color: const Color.fromARGB(
                                          255, 175, 171, 171),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Red Lobster',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 38, 129, 41),
                                      size: 13,
                                    ),
                                    Text(
                                      '4.2',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('| 55 mins')
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                child: Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'asset/Subway-restaurant.webp'),
                                          fit: BoxFit.cover),
                                      color: const Color.fromARGB(
                                          255, 175, 171, 171),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Sub Way',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 38, 129, 41),
                                      size: 13,
                                    ),
                                    Text(
                                      '4.4',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('| 15 mins')
                                  ],
                                ),
                              ),
                              Card(
                                child: Container(
                                  height: 100,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image:
                                              AssetImage('asset/paragon.png'),
                                          fit: BoxFit.cover),
                                      color: const Color.fromARGB(
                                          255, 175, 171, 171),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Paragon',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 38, 129, 41),
                                      size: 13,
                                    ),
                                    Text(
                                      '4.',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text('| 15 mins')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 5,
                      thickness: 2,
                      color: Colors.grey,
                      indent: 3,
                      endIndent: 5,
                    ),
                  ),
                  Text('EXPLORE'),
                  Expanded(
                    child: Divider(
                      height: 5,
                      thickness: 2,
                      color: Colors.grey,
                      indent: 3,
                      endIndent: 5,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Offers',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                              decorationThickness:
                                  BorderSide.strokeAlignCenter),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                    ),
                    Padding(
                      padding: EdgeInsets.all(9.0),
                      child: Text(
                        'Up to 60% OFF,FLAT DISCOUNTS, \n AND OTHER GREAT OFFERS',
                        style: TextStyle(color: Color(0xFF5A4646)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 5,
                      thickness: 2,
                      color: Color.fromARGB(255, 222, 216, 216),
                      indent: 3,
                      endIndent: 5,
                    ),
                  ),
                  Text("WHAT'S ON YOUR MIND ?"),
                  Expanded(
                    child: Divider(
                      height: 5,
                      thickness: 2,
                      color: Colors.grey,
                      indent: 3,
                      endIndent: 5,
                    ),
                  ),
                ],
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('asset/briyani 2.jpg'),
                          radius: 50,
                          backgroundColor: Color.fromARGB(255, 111, 111, 111),
                        ),
                      ),
                      Text('Biryani'),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('asset/pizza.jpg'),
                          radius: 50,
                          backgroundColor: Color.fromARGB(255, 111, 111, 111),
                        ),
                      ),
                      Text('Pizza')
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('asset/chicken.jpeg'),
                          radius: 50,
                          backgroundColor: Color.fromARGB(255, 111, 111, 111),
                        ),
                      ),
                      Text('chicken'),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('asset/burger 2.avif'),
                          radius: 50,
                          backgroundColor: Color.fromARGB(255, 111, 111, 111),
                        ),
                      ),
                      Text('Burger')
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('asset/fried rice 2.jpg'),
                          radius: 50,
                          backgroundColor: Color.fromARGB(255, 111, 111, 111),
                        ),
                      ),
                      Text('Fried Rice'),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('asset/sandwich.jpg'),
                          radius: 50,
                          backgroundColor: Color.fromARGB(255, 111, 111, 111),
                        ),
                      ),
                      Text('Sandwich')
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('asset/noodils2.webp'),
                          radius: 50,
                          backgroundColor: Color.fromARGB(255, 111, 111, 111),
                        ),
                      ),
                      Text('Noodles'),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('asset/south indain.jpg'),
                          radius: 50,
                          backgroundColor: Color.fromARGB(255, 111, 111, 111),
                        ),
                      ),
                      Text('South Idian')
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('asset/orange-juice.jpg'),
                          radius: 50,
                          backgroundColor: Color.fromARGB(255, 111, 111, 111),
                        ),
                      ),
                      Text('Juice'),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('asset/cake 3.jpeg'),
                          radius: 50,
                          backgroundColor: Color.fromARGB(255, 111, 111, 111),
                        ),
                      ),
                      Text('Cake')
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    height: 5,
                    thickness: 2,
                    color: Colors.grey,
                  )),
                  Text('ALL RESTAURANTS'),
                  Expanded(
                      child: Divider(
                    height: 5,
                    thickness: 2,
                    color: Colors.grey,
                  )),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Card(
                      child: Container(
                        child: const Center(
                            child: Row(
                          children: [
                            Icon(Icons.arrow_drop_down),
                            Text(
                              'Sort',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                        height: 30,
                        width: 85,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey),
                            color: const Color.fromARGB(255, 251, 249, 248)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Card(
                      child: Container(
                        child: const Center(
                            child: Text(
                          'Nearest',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )),
                        height: 30,
                        width: 85,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey),
                            color: const Color.fromARGB(255, 251, 249, 248)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Card(
                      child: Container(
                        child: const Center(
                            child: Text(
                          'Great Offers',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )),
                        height: 30,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey),
                            color: const Color.fromARGB(255, 251, 249, 248)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Card(
                      child: Container(
                        child: const Center(
                            child: Text(
                          'Rating 4.0+',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )),
                        height: 30,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey),
                            color: const Color.fromARGB(255, 251, 249, 248)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Card(
                      child: Container(
                        child: const Center(
                            child: Text(
                          'Previously ordered',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )),
                        height: 30,
                        width: 165,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey),
                            color: const Color.fromARGB(255, 251, 249, 248)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Card(
                      child: Container(
                        child: const Center(
                            child: Text(
                          '100%veg-only',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )),
                        height: 30,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey),
                            color: const Color.fromARGB(255, 251, 249, 248)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Card(
                      child: Container(
                        child: const Center(
                            child: Row(
                          children: [
                            Icon(Icons.arrow_drop_down),
                            Text(
                              'Cuisines',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        )),
                        height: 30,
                        width: 85,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey),
                            color: const Color.fromARGB(255, 251, 249, 248)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                '99 restaurants delivering to you',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 146, 144, 144)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Card(
                            child: CarouselSlider.builder(
                              itemCount: carosalImage.length,
                              options: CarouselOptions(
                                viewportFraction: 1.0,
                                autoPlay: true,
                              ),
                              itemBuilder: (context, index, realIndex) =>
                                  Container(
                                height: 200,
                                width: 500,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(carosalImage[index]),
                                        fit: BoxFit.cover),
                                    color: Color.fromARGB(255, 176, 175, 175),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10))),
                                child: SizedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      index >= 1
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Container(
                                                height: 25,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        113, 0, 0, 0)),
                                                child: Center(
                                                  child: Text(
                                                    carosalText[index],
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : SizedBox(),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.favorite_border_outlined,
                                                color: Colors.white,
                                              ),
                                              Icon(
                                                Icons.remove_red_eye_outlined,
                                                color: Colors.white,
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                child: Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  size: 13,
                                  color: Color.fromARGB(255, 212, 36, 23),
                                ),
                                Text('56 mins .5 km'),
                              ],
                            )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Text(
                                          '3.9',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 10,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                                height: 24,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Paragon Restaurant',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Biryani.kerala. ₹130 for one',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 133, 118, 118)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  height: 335,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20))),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Card(
                          child: CarouselSlider.builder(
                            itemCount: secondcaroalimage.length,
                            options: CarouselOptions(
                                viewportFraction: 1.0, autoPlay: true),
                            itemBuilder: (context, index, realIndex) =>
                                Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    index >= 0
                                        ? Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Container(
                                              height: 18,
                                              width: 150,
                                              decoration: BoxDecoration(
                                                  color: const Color.fromARGB(
                                                      121, 0, 0, 0)),
                                              child: Center(
                                                child: Text(
                                                  secondcaroalitext[index],
                                                  style: TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255)),
                                                ),
                                              ),
                                            ),
                                          )
                                        : SizedBox(),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.favorite_border_sharp,
                                            color: Colors.white,
                                          ),
                                          Icon(
                                            Icons.remove_red_eye_outlined,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    )
                                  ]),
                              height: 200,
                              width: 500,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(secondcaroalimage[index]),
                                      fit: BoxFit.cover),
                                  color: Color.fromARGB(255, 176, 175, 175),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 13,
                                color: Colors.green,
                              ),
                              Text('20 mins.2.5 km'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '4.1',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                              height: 24,
                              width: 35,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Kuttichira Biryani centre',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Biryani.kerala.₹120 for one',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 131, 129, 129)),
                        ),
                      )
                    ],
                  ),
                  height: 335,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20))),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Card(
                          child: CarouselSlider.builder(
                            itemCount: thirdcaroalimage.length,
                            options: CarouselOptions(
                                autoPlay: true, viewportFraction: 1.0),
                            itemBuilder: (context, index, realIndex) =>
                                Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  index >= 1
                                      ? Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Container(
                                            height: 18,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  99, 0, 0, 0),
                                            ),
                                            child: Text(
                                              thirdcaroaltext[index],
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      : SizedBox(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.favorite_border_sharp,
                                          color: Colors.white,
                                        ),
                                        Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              height: 200,
                              width: 500,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(thirdcaroalimage[index]),
                                      fit: BoxFit.cover),
                                  color: Color.fromARGB(255, 176, 175, 175),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.timer,
                                  size: 13,
                                  color: Color.fromARGB(255, 221, 221, 52),
                                ),
                              ),
                              Text('54 mins. 6.5km'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 23,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(3)),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text(
                                      '4.5',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Chicking',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          'Fast Food .₹250 for one',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 131, 129, 129),
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  height: 335,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Top brand loved customers',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 21,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Card(
                                child: Container(
                                  height: 250,
                                  width: 200,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 147, 147, 147),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Card(
                                child: Container(
                                  height: 250,
                                  width: 200,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 147, 147, 147),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Card(
                                child: Container(
                                  height: 250,
                                  width: 200,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 147, 147, 147),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Card(
                                child: Container(
                                  height: 250,
                                  width: 200,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 147, 147, 147),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Card(
                                child: Container(
                                  height: 250,
                                  width: 200,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Icon(Icons.arrow_forward))
                          ],
                        ),
                      ),
                    ],
                  ),
                  height: 400,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)))),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Card(
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 176, 175, 175),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                          ),
                        ),
                      )
                    ],
                  ),
                  height: 335,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20))),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Card(
                          child: Container(
                            height: 200,
                            width: 500,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 176, 175, 175),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                          ),
                        ),
                      )
                    ],
                  ),
                  height: 335,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ],
        ));
  }
}
