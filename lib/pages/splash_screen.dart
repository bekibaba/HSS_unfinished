import 'package:flutter/material.dart';

import 'navigate_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, 
        MaterialPageRoute(builder: (context)=> const Navigate())
      
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      Colors.white, // Set the background color of the splash screen
      body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),
              ClipOval(
                  child: Image.asset(
                    'assets/HI Logo.png',
                    width: 150,
                    height: 150,
                  )),
              const SizedBox(
                height: 30,
              ),
              CircularProgressIndicator(
                color: Colors.lightGreen,
              )
            ],
          )),
    );
  }
}
