// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../academicYear.dart';
import 'Login_Page.dart';
import 'firstYear/fisrtYear_Page.dart';

class SignUpPagee extends StatefulWidget {
  const SignUpPagee({Key? key}) : super(key: key);

  @override
  State<SignUpPagee> createState() => _SignUpPageeState();
}

class _SignUpPageeState extends State<SignUpPagee> {
  var usernameValue, passwordValue, emailValue;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  signUp() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      formdata.save();
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailValue, password: passwordValue);
        return userCredential;
      } on FirebaseAuthException catch (e) {
        if (e.code == "weak-password") {
          print("The password provided is too weak.");
        } else if (e.code == "email-already-in-use") {
          print("The account already exists for that email");
        }
      } catch (e) {
        print(e);
      }
    } else {
      print('Not valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 180, 185, 180),
      body: ListView(
        children: [
          Center(
            child: Image.asset("assets/images/Fegpic.jpeg"),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Form(
                key: formstate,
                child: Column(
                  children: [
                    TextFormField(
                      onSaved: (val) {
                        usernameValue = val;
                      },
                      validator: (val) {
                        if (val!.length > 50) {
                          return "username can't to be larger than 50 letter";
                        }
                        if (val.length < 5) {
                          return "username can't be less than 5 letter";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "username",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onSaved: (val) {
                        emailValue = val;
                      },
                      validator: (val) {
                        if (val!.length > 50) {
                          return "email can't to be larger than 100 letter";
                        }
                        if (val.length < 10) {
                          return "email can't be less than 10 letter";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "email",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onSaved: (val) {
                        passwordValue = val;
                      },
                      validator: (val) {
                        if (val!.length > 30) {
                          return "password can't to be larger than 30 letter";
                        }
                        if (val.length < 5) {
                          return "password can't be less than 5 letter";
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            const Text("if you have Account "),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => LoginPage())));
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        )),
                    Container(
                      child: OutlinedButton(
                        onPressed: () async {
                          UserCredential response = await signUp();
                          if (response != null) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: ((context) => AcademicYear())));
                          } else {
                            print('Sign Up Failed');
                          }
                        },
                        child: Text(
                          " Sign Up",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
