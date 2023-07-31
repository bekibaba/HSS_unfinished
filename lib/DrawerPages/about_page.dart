import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text('About'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 75.0,
            backgroundImage: AssetImage('lib/images/HI Logo.png'),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Habesha Insights Local Discovery and Review app',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset('lib/images/instagram_icon.png'),
                onPressed: () {
                  // Handle Instagram icon tap
                },
              ),
              IconButton(
                icon: Image.asset('lib/images/telegram_icon.png'),
                onPressed: () {
                  // Handle Telegram icon tap
                },
              ),
              IconButton(
                icon: Image.asset('lib/images/facebook_icon.png'),
                onPressed: () {
                  // Handle Facebook icon tap
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
