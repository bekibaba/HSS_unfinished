//import 'dart:convert';
import 'businesses_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailScreen extends StatefulWidget {
  final BusinessInfo placeInfo;
  const DetailScreen({Key? key, required this.placeInfo}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.network(
            widget.placeInfo.image,
            width: double.infinity,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(100),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: const BoxDecoration(
                                color: Colors.lightGreen,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                  child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 16,
                              )),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(100),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                              color: Colors.lightGreen,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                                child: Icon(
                              Icons.bookmark_rounded,
                              color: Colors.white,
                              size: 16,
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ///////////////////////////////////
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const SizedBox(width: 5),
                                Text(
                                  widget.placeInfo.name,
                                  style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(children: [
                              const SizedBox(width: 5),
                              const Icon(Icons.location_on, color: Colors.red),
                              Text(widget.placeInfo.location,
                                  style: const TextStyle(color: Colors.grey))
                            ]),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Trip detail',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.placeInfo.desc,
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.grey),
                            ),
                            const SizedBox(height: 10),
                            const Divider(
                              color: Colors.black38,
                              height: 5,
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 5),
                                const Text(
                                  'Review: ',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Text(
                                        "${widget.placeInfo.review} ",
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow[900],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const SizedBox(width: 5),
                                const Text(
                                  'Distance: ',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "${widget.placeInfo.distance} kilometers",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            MaterialButton(
                              color: Colors.lightGreen,
                              minWidth: double.infinity,
                              height: 50,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              onPressed: () {},
                              child: const Text(
                                'visit',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
