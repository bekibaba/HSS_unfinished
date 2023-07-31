import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hss/pages/navigate_page.dart';
import 'package:hss/pages/signup_page.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';

  Future<void> _signInUser() async {
    // API endpoint URL
    const apiUrl = "http://my-json-server.typicode.com/typicode/demo/posts";

    // Create the request body
    final body = json.encode({
      'email': _email,
      'password': _password,
    });

    try {
      // Send the POST request
      final response = await http.post(Uri.parse(apiUrl),
          headers: {'Content-Type': 'application/json'}, body: body);

      // Process the response
      if (response.statusCode == 200) {
        // Sign-in successful, handle the response accordingly
        print('User signed in successfully');
      } else {
        // Sign-in failed, handle the error response
        print('Sign-in failed. Error: ${response.statusCode}');
      }
    } catch (e) {
      // Handle any exceptions that occur during the API call
      print('Exception occurred: $e');
    }
  }

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
            Container(
              padding: EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(
                          height: 175,
                        ),
                        const Text(
                          'Sign In',
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
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _email = value!;
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
                            _password = value!;
                          },
                        ),
                        const SizedBox(height: 55.0),
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Navigate()),
                              );
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                _signInUser();
                              }
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors
                                      .lightGreen), // Change the color to your desired color
                            ),
                            child: const Text(
                              'Sign In',
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()),
                            );
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'don\'t have an account ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Register now',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 0.9,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Text(
                                  'or continue with',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 0.9,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        // google + apple sign in buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // google logo
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset('lib/images/google.png')),

                            const SizedBox(width: 10),
                            //apple logo
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset('lib/images/apple-logo.png')),
                            // apple button
                            //SquareTile(imagePath: 'lib/images/ios.png')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
