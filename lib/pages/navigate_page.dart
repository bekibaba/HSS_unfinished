import 'package:flutter/material.dart';
import 'package:hss/DrawerPages/profile_page.dart';
import 'package:hss/pages/home_page.dart';
import 'package:hss/pages/signIn_page.dart';
import '../DrawerPages/about_page.dart';
import '../DrawerPages/account_page.dart';
import '../DrawerPages/help_and_support_page.dart';
import '../DrawerPages/settings_page.dart';
import 'help_page.dart';
import 'maps_page.dart';

class Navigate extends StatefulWidget {
  const Navigate({Key? key}) : super(key: key);

  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  int _selectedIndex = 0;

  void _navBottonBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomeScreen(),
    MapsScreen(),
    HelpScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          elevation: 10,
          title: const Center(child: Text('Habesha Insights')),
          // leading: IconButton(
          //   onPressed: () { },
          //   icon: Icon(Icons.menu),
          // ),
          actions: [
            IconButton(
                onPressed: () {
                  // _showDialog(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AccountSettingsPage()),
                  );
                },
                icon: const Icon(Icons.person)),
          ],
        ),
        body: _pages[_selectedIndex],

///////////////////////////////////////////////////////////////////////////////////

        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[850], // Set the desired color
              ),
              accountName: const Text('Profile name'),
              accountEmail: const Text('HabeshaInsights@gmail.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.lightGreen,
                child: Icon(Icons.person),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Help & Support'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpAndSupportPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInScreen()),
                );
                // Logout the user and navigate to the login screen
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text('Share'),
              onTap: () {
                // Share the app with friends and family
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Rate & Review'),
              onTap: () {
                // Navigate to the app store to rate and review the app
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Legal'),
              onTap: () {
                // Navigate to the legal information screen
              },
            ),
          ],
        )),

///////////////////////////////////////////////////////////////////////////////////

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedIndex,
          onTap: _navBottonBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on), label: 'Map'),
            BottomNavigationBarItem(
                icon: Icon(Icons.question_mark), label: 'help'),
          ],
        ),
      ),
    );
  }
}

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Colors.grey[850], // Set the desired color
          ),
          accountName: const Text('Profile name'),
          accountEmail: const Text('HabeshaInsights@gmail.com'),
          currentAccountPicture: const CircleAvatar(
            backgroundColor: Colors.lightGreen,
            child: Icon(Icons.person),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.person),
          title: const Text('Profile'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.help),
          title: const Text('Help & Support'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelpAndSupportPage()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.info),
          title: const Text('About'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutPage()),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('Logout'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInScreen()),
            );
            // Logout the user and navigate to the login screen
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.share),
          title: const Text('Share'),
          onTap: () {
            // Share the app with friends and family
          },
        ),
        ListTile(
          leading: const Icon(Icons.star),
          title: const Text('Rate & Review'),
          onTap: () {
            // Navigate to the app store to rate and review the app
          },
        ),
        ListTile(
          leading: const Icon(Icons.privacy_tip),
          title: const Text('Legal'),
          onTap: () {
            // Navigate to the legal information screen
          },
        ),
      ],
    ));
  }
}
