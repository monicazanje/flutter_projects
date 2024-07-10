import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignInState();
}

class _SignInState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController compassController = TextEditingController();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode passFocusNode = FocusNode();
  final FocusNode compassFocusNode = FocusNode();
  final GlobalKey<FormState> _formkey2 = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String compass = '';

  void createacc() async {
    email = nameController.text.trim();
    password = passController.text.trim();
    compass = compassController.text.trim();
    if (email == '' || email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("please enter email address"),
        ),
      );
      log("please enter email address");
    } else if (password == '' || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("please enter password"),
        ),
      );
      log("please enter password");
    } else if (compass == '' || compass.isEmpty) {
      log("please enter confirm password");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("please enter confirm password"),
        ),
      );
    } else if (password != compass) {
      log("password do not match");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("password do not match"),
        ),
      );
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        log("user created");
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Sign Up successfully "),
          ),
        );
        if (userCredential.user != null) {
          Navigator.of(context).pop();
        }
      } on FirebaseAuthException catch (ex) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Already Available "),
          ),
        );
      }
    }
    discard();
  }

  void discard() {
    nameController.clear();
    passController.clear();
    compassController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 86, 144),
      body: Center(
        child: Form(
          key: _formkey2,
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(
                  top: 130, bottom: 130, left: 20, right: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                    style: BorderStyle.solid,
                  ),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 114, 180, 233),
                        blurRadius: 10,
                        spreadRadius: 5),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
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
                        hintStyle:
                            const TextStyle(color: Colors.black, fontSize: 15),
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
                        email = value;
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
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: TextFormField(
                      controller: passController,
                      focusNode: passFocusNode,
                      decoration: InputDecoration(
                        hintText: "Enter  password",
                        hintStyle:
                            const TextStyle(color: Colors.black, fontSize: 15),
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
                        password = value;
                        print("Value=$value");
                      },
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      validator: (password) {
                        if (password == null || password.isEmpty) {
                          return "Please Enter password";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: TextFormField(
                      controller: compassController,
                      focusNode: compassFocusNode,
                      decoration: InputDecoration(
                        hintText: "Confirm password",
                        hintStyle:
                            const TextStyle(color: Colors.black, fontSize: 15),
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
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      validator: (compass) {
                        if (compass == null || compass.isEmpty) {
                          return "Confirm Password";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 81, 169, 246),
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
                      createacc();
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return const SignIn();
                      //     },
                      //   ),
                      // );
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
