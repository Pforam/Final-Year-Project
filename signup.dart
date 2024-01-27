import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:main_app/homepage.dart';
import 'package:main_app/login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
     final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Future<void> _register() async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // Registration successful, you can navigate to another screen or perform additional actions
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
    } catch (e) {
      // Handle registration errors (e.g., invalid email, weak password, etc.)
      print("Error during registration: $e");
    }
  }
    return Scaffold(
      body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Center(
            child: Column(
              children: <Widget>[
                const Column(
                  children: <Widget>[
                    Text(
                      "Create Account",
                      style: TextStyle(
                        color: Color(0xFF1F41BB),
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Create an account so you can explore\nall the existing places",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 43,
                ),
                Container(
                  width: 310,
                  height: 64,
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF1F4FF),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 2, color: Color(0xFF1F41BB)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child:  Row(
                    children: [
                      Text(
                        "Email",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF616161),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 310,
                  height: 64,
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF1F4FF),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 2, color: Color(0xFF1F41BB)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child:  Row(
                    children: [
                      Text(
                        "Password",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF616161),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
controller: _passwordController,
                          obscureText: true, // To hide the password
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: 310,
                  height: 64,
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF1F4FF),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 2, color: Color(0xFF1F41BB)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        "Confirm Password",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF616161),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          obscureText: true, // To hide the password
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: (){
                        log  (
                      "before registration"
                    );
                    _register();
                    log  (
                      "after registration"
                    );
                  },
                  child: Container(
                    width: 310,
                    height: 60,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF1F41BB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0xFFCAD6FF),
                          blurRadius: 20,
                          offset: Offset(0, 10),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Sign up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    ); // Use the named route
                  },
                  child: Container(
                    width: 310,
                    height: 60,
                    decoration: ShapeDecoration(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Already have an account',
                        style: TextStyle(
                          color: Color(0xFF1F41BB),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/farm.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
}
