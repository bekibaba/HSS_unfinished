//import 'package:flutter/material.dart';

class BusinessInfo {
  final String location, image, name, desc;
  final double distance, review;

  BusinessInfo({
    required this.review,
    required this.name,
    required this.image,
    required this.location,
    required this.distance,
    required this.desc,
  });
}

List businesses = [
  BusinessInfo(
      image:
          'https://i.pinimg.com/564x/12/97/3b/12973b5c7af5f79f24bb3465ec2e7bba.jpg',
      location: 'Addis Abeba',
      name: 'Haile Resort',
      distance: 120,
      review: 4.5,
      desc: "discription of the business goes here"),
  BusinessInfo(
      image:
          'https://i.pinimg.com/564x/2e/70/6e/2e706e2838ca77bc95617e7c01f8c7ac.jpg',
      location: 'Addis Abeba',
      name: 'Sherar Addis Hotel',
      distance: 5,
      review: 4,
      desc: 'discription of the business goes here'),
  BusinessInfo(
      image:
          'https://i.pinimg.com/564x/12/97/3b/12973b5c7af5f79f24bb3465ec2e7bba.jpg',
      location: 'Addis Abeba',
      name: 'Haile Resort',
      distance: 120,
      review: 4.5,
      desc: "discription of the business goes here"),
  BusinessInfo(
      image:
          'https://i.pinimg.com/564x/12/97/3b/12973b5c7af5f79f24bb3465ec2e7bba.jpg',
      location: 'Addis Abeba',
      name: 'Haile Resort',
      distance: 120,
      review: 4.5,
      desc: "discription of the business goes here"),
];
