import 'package:flutter/material.dart';
import 'package:hss/DrawerPages/profile_page.dart';
//import 'package:hss/DrawerPages/settings_page.dart';

class AccountSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text('Account Settings'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
          Divider(),
          // ListTile(
          //   leading: Icon(Icons.lock),
          //   title: Text('Change Password'),
          //   onTap: () {
          //     // Handle change password tap
          //   },
          // ),
          // Divider(),
          // ListTile(
          //   leading: Icon(Icons.email),
          //   title: Text('Change Email'),
          //   onTap: () {
          //     // Handle change email tap
          //   },
          // ),
          Divider(),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Delete Account'),
            onTap: () {
              // Handle delete account tap
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
