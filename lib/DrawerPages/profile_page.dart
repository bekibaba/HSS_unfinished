import 'package:flutter/material.dart';

import 'account_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isObscurePassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('lib/images/pp.jpg'))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Colors.white,
                        ),
                        color: Colors.blue,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),


            Column(
              children: [
                //full name
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 5),
                        labelText:'Full Name',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'Enter Your Name',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                  ),
                ),

                //email

                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 5),
                        labelText:'Email',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'Enter Your Email',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                  ),
                ),

                //password

                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        suffixIcon:
                        IconButton(
                            icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                            onPressed: () {}
                        ),

                        contentPadding: EdgeInsets.only(bottom: 5),
                        labelText:'Password',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'password',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                  ),
                ),

                //address
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 5),
                        labelText:'Address',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        hintText: 'Enter Your Address',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                  ),
                ),



              ],
            ),



            // buildTextField("Full Name", "Enter Your Name", false),
            // buildTextField("Email", "Enter Your Email", false),
            // buildTextField("Password", "**********", true),
            // buildTextField("Address", "Enter Your Address", false),
            SizedBox(height: 30),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AccountSettingsPage())
                      );
                    },
                    child: Text('Cancle',
                        style: TextStyle(
                            fontSize: 15, letterSpacing: 2, color: Colors.white)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Save',
                        style: TextStyle(
                            fontSize: 15, letterSpacing: 2, color: Colors.white)),
                  )

                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, isPasswordTextField) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? isObscurePassword : false,
        decoration: InputDecoration(
            suffixIcon: isObscurePassword
                ? IconButton(
                    icon: Icon(Icons.remove_red_eye, color: Colors.grey),
                    onPressed: () {})
                : null,
            contentPadding: EdgeInsets.only(bottom: 5),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            )),
      ),
    );
  }
}
