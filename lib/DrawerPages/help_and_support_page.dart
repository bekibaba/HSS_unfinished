import 'package:flutter/material.dart';

import 'about_page.dart';


class HelpAndSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text('Help and Support'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          buildFeatureCard(
            onTap: (){},
            icon: Icons.phone,
            title: 'Contact Us',
            subtitle: 'Call or email our support team',
          ),
          SizedBox(height: 10),
          buildFeatureCard(
            onTap: (){},
            icon: Icons.chat,
            title: 'Live Chat',
            subtitle: 'Chat with a support agent in real-time',
          ),
          SizedBox(height: 10),
          buildFeatureCard(
            onTap: (){},
            icon: Icons.email,
            title: 'Send Feedback',
            subtitle: 'Send your feedback and suggestions',
          ),
          SizedBox(height: 10),
          buildFeatureCard(
            onTap: (){},
            icon: Icons.info,
            title: 'FAQs',
            subtitle: 'Frequently Asked Questions',
          ),
          SizedBox(height: 10),
          buildFeatureCard(
            onTap: (){},
            icon: Icons.rate_review,
            title: 'Rate the App',
            subtitle: 'Share your experience by rating the app',
          ),
          SizedBox(height: 10),
          buildFeatureCard(
            onTap: (){},
            icon: Icons.security,
            title: 'Privacy Policy',
          ),
          SizedBox(height: 10),
          buildFeatureCard(
            onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage())
            );
            },
            icon: Icons.help,
            title: 'About',

          ),
        ],
      ),
    );
  }

  Widget buildFeatureCard({
    required IconData icon,
    required String title,
    required onTap,
    String? subtitle,
  }) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle) : null,
        onTap: onTap,
      ),
    );
  }
}
