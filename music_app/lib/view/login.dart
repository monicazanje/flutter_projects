import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/view/productgallery.dart';
import 'package:music_app/view/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode passFocusNode = FocusNode();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String name = '';
  String password = '';
  bool visible = false;
  void login() async {
    name = nameController.text.trim();
    password = passController.text.trim();
    if (name == '' || name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("User Not Found"),
        ),
      );
    } else if (password == '' || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(" please Enter Password "),
        ),
      );
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: name, password: password);
        if (userCredential.user != null) {
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Sign In Successfully "),
            ),
          );
          Navigator.push(
            // ignore: use_build_context_synchronously
            context,
            MaterialPageRoute(
              builder: (context) => const Gallery(),
            ),
          );
        }
      } on FirebaseAuthException catch (ex) {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Please Enter Valid Information "),
          ),
        );
        log("enter valid details");
      }
    }
    discard();
  }

  void discard() {
    nameController.clear();
    passController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 45, 45),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(
                left: 30, right: 30, top: 150, bottom: 150),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 215, 53, 17),
                    blurRadius: 10,
                    spreadRadius: 5),
              ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: TextFormField(
                      controller: nameController,
                      focusNode: nameFocusNode,
                      decoration: InputDecoration(
                        hintText: "Enter  email",
                        hintStyle: const TextStyle(
                            color: Color.fromRGBO(255, 46, 0, 1), fontSize: 15),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide: BorderSide(width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              const BorderSide(color: Colors.orange, width: 2),
                        ),
                      ),
                      onChanged: (value) {
                        name = value;
                        print("Value=$value");
                      },
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      validator: (name) {
                        if (name == null || name.isEmpty) {
                          return "Please Enter name";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  visible
                      ? SizedBox(
                          height: 50,
                          width: 350,
                          child: TextFormField(
                            controller: passController,
                            focusNode: passFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              hintStyle: const TextStyle(
                                  color: Color.fromRGBO(255, 46, 0, 1),
                                  fontSize: 15),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                borderSide: BorderSide(width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 2),
                              ),
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    visible = !visible;
                                  });
                                },
                                icon: const Icon(Icons.visibility_outlined),
                              ),
                            ),
                            validator: (password) {
                              if (password == null || password.isEmpty) {
                                return "Please Enter Password";
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              password = value;
                              print("Value=$value");
                            },
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.emailAddress,
                          ),
                        )
                      : SizedBox(
                          height: 50,
                          width: 350,
                          child: TextFormField(
                            controller: passController,
                            focusNode: passFocusNode,
                            obscureText: true,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              hintStyle: const TextStyle(
                                  color: Color.fromRGBO(255, 46, 0, 1),
                                  fontSize: 15),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                borderSide: BorderSide(width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.orange, width: 2),
                              ),
                              prefixIcon: const Icon(Icons.lock),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    visible = !visible;
                                  });
                                },
                                icon: const Icon(Icons.visibility_off_outlined),
                              ),
                            ),
                            validator: (password) {
                              if (password == null || password.isEmpty) {
                                return "Please Enter Password";
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              password = value;
                              print("Value=$value");
                            },
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                  const SizedBox(
                    height: 100,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(255, 46, 0, 1),
                      ),
                      fixedSize: MaterialStateProperty.all<Size>(
                        const Size(350.0, 50.0),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      login();
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignUp();
                          }));
                        },
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          alignment: Alignment.centerRight,
                          child: Text("Sign Up",
                              style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(255, 46, 0, 1),
                              )),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        alignment: Alignment.centerRight,
                        child: Text("Forgot Password?",
                            style: GoogleFonts.sora(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(255, 46, 0, 1),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
