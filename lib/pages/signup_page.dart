import 'package:flutter/material.dart';
import 'package:hss/pages/signIn_page.dart';

class SignUpScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  String? _name;
  String? _email;
  String? _password;
  String? _phone;

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset('assets/background_image.jpg',
                    fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Form(
                key: _formKey,
                child: ListView(scrollDirection: Axis.vertical, children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 125,
                      ),
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .white), // Change the color to your desired color
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _name = value;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .white), // Change the color to your desired color
                          ),
                        ),
                        validator: (value) {
                          String pattern =
                              r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                          RegExp regex = RegExp(pattern);
                          if (value == null || value.isEmpty) {
                            return 'Email is required.';
                          } else if (!regex.hasMatch(value)) {
                            return 'Invalid email address.';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          _email = value;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          labelText: 'Mobile number',
                          hintText: 'optional',
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .white), // Change the color to your desired color
                          ),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required.';
                          } else if (value.length < 8) {
                            return 'Password must be at least 8 characters long.';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          _phone = value;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.key,
                            color: Colors.white,
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors
                                    .white), // Change the color to your desired color
                          ),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value;
                        },
                      ),
                      const SizedBox(height: 45.0),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              _submitForm();
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .lightGreen), // Change the color to your desired color
                          ),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()),
                          );
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account? ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Sign in',
                              style: TextStyle(
                                color: Colors.lightBlueAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submitForm() {
    print('Name: $_name');
    print('Email: $_email');
    print('Password: $_password');
    print('Phone: $_phone');
  }
}
