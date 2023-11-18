import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _username = TextEditingController();

  final _email = TextEditingController();

  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 50,
        ),
        Image.asset("assets/panda.png",
            height: MediaQuery.of(context).size.height / 2 / 2),
        Text(
          "Create your new account",
          style: GoogleFonts.sendFlowers(fontSize: 32),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: TextField(
            style: const TextStyle(color: Colors.black),
            controller: _username,
            decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                hintText: "Enter Your Name",
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(
                      color: Colors.black,
                    )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black, style: BorderStyle.solid))),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: TextField(
            style: const TextStyle(color: Colors.black),
            controller: _email,
            decoration: const InputDecoration(
                hintText: "Enter your email address",
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                ),
                hintStyle: TextStyle(color: Colors.grey),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(
                      color: Colors.black,
                    )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black, style: BorderStyle.solid))),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: TextField(
            style: const TextStyle(color: Colors.black),
            obscureText: true,
            controller: _password,
            decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                hintText: "Enter Your Password",
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                ),
                hintStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(
                      color: Colors.black,
                    )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black, style: BorderStyle.solid))),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: _email.text, password: _password.text);
                  Navigator.pop(context);
                },
                child: const Text(
                  "Create Account",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        )
      ]),
    );
  }
}
