//import 'dart:convert';
import '../components/businesses_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/details_page.dart';
import '../components/recent_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //     width: double.infinity,
          //     height: double.infinity,
          //     child: Image.asset('lib/images/background_image.jpg',
          //         fit: BoxFit.cover)),
          ListView(scrollDirection: Axis.vertical, children: [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                // search bar
                Material(
                  elevation: 5,
                  child: Column(
                    children: [
                      ////// search bar
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(25),
                          elevation: 5,
                          child: Row(children: [
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    // focusedBorder: InputBorder.none,
                                    hintText: 'Search here',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                    prefixIcon: Icon(
                                      Icons.location_on,
                                      color: Colors.lightGreen,
                                    )),
                              ),
                            ),
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.search,
                                color: Colors.lightGreen,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            )
                          ]),
                        ),
                      ),

                      SizedBox(
                        height: 2,
                      ),

                      ////// categories
                      Container(
                        height: 65,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 5,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(25),
                                  elevation: 5,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 5),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(Icons.restaurant,
                                              color: Colors.lightGreen),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Restaurants',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(25),
                                  elevation: 5,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 5),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(Icons.local_hotel,
                                              color: Colors.lightGreen),
                                        ),
                                        SizedBox(
                                          width: 1,
                                        ),
                                        Text(
                                          'Hotel',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(25),
                                  elevation: 5,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 5),
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Icon(
                                            Icons.local_gas_station,
                                            color: Colors.lightGreen,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Gas ',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Material(
                                  child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 4),
                                      child: TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.arrow_forward,
                                          ),
                                          label: Text('more'))),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
                //recommended text
                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Recommended',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  height: 350,
                  child: ListView.builder(
                      itemCount: businesses.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            RecentCard(
                                placeInfo: businesses[index],
                                press: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailScreen(
                                            placeInfo: businesses[index])),
                                  );
                                }),
                            const SizedBox(
                              width: 8,
                            )
                          ],
                        );
                      }),
                ),
                ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

                Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Recent',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  height: 350,
                  child: ListView.builder(
                      itemCount: businesses.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            RecentCard(
                                placeInfo: businesses[index],
                                press: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailScreen(
                                            placeInfo: businesses[index])),
                                  );
                                }),
                            const SizedBox(
                              width: 8,
                            )
                          ],
                        );
                      }),
                )
              ],

              ///////////////////////////////////////////////////////////////
            ),
          ])
        ],
      ),
    );
  }
}
