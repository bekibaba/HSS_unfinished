//import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'businesses_list.dart';

class RecentCard extends StatelessWidget {
  final BusinessInfo placeInfo;
  final VoidCallback press;
  const RecentCard({Key? key, required this.placeInfo, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Column(children: [
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(25),
          child: Container(
            height: 220,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: NetworkImage(placeInfo.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Center(
                  child: Text(
                    placeInfo.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Row(children: [
                  SizedBox(width: 10),
                  Icon(Icons.location_on, color: Colors.red),
                  Text(placeInfo.location,
                      style: TextStyle(color: Colors.black))
                ]),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
