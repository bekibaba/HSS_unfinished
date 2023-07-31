import 'package:flutter/material.dart';
import 'about_page.dart';
import 'account_page.dart';
import 'help_and_support_page.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            subtitle: const Text('Manage notification settings'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Handle notifications tap
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            subtitle: Text('Change app language'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Handle language tap
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Account'),
            subtitle: Text('Manage your account settings'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountSettingsPage()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Privacy & Security'),
            subtitle: Text('Configure privacy and security options'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Handle privacy and security tap
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications_off),
            title: Text('Turn Off Notifications'),
            onTap: () {
              // Handle turn off notifications tap
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help & Support'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpAndSupportPage()),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
