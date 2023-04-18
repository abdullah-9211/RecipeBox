import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:recipebox/Repositories/userFactory.dart';
import 'package:recipebox/Resources/constants.dart';
import 'package:recipebox/Views/login_page.dart';

final userBank UserBank = GetIt.instance<userBank>();

class RegistrationPage extends StatelessWidget {
  RegistrationPage({Key? key}) : super(key: key);

  late String username = "";
  late String email = "";
  late String pass = "";
  late String confirm_pass = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEDCD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40),
                  child: const Image(
                    image: AssetImage('images/final2.png'),
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  width: double.infinity,
                  color: const Color(0xFFFFEDCD),
                  child: const Center(
                    child: Text(
                      'RecipeBox',
                      style: mainHeadingStyle,
                    ),
                  ),
                ),
                const Text(
                  'Sign Up',
                  style: subHeadingStyle,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Username',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                          ),
                          onChanged: (value) {
                            username = value;
                          },
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Color(0xFFFFEDCD)),
                            ),
                          ),
                          onChanged: (value) {
                            email = value;
                          },
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Color(0xFFFFEDCD)),
                            ),
                          ),
                          onChanged: (value) {
                            pass = value;
                          },
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Color(0xFFFFEDCD)),
                            ),
                          ),
                          onChanged: (value) {
                            confirm_pass = value;
                          },
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            if (confirm_pass == pass) {
                              UserBank.addUser(username, email, pass);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            } else {
                              Widget okButton = TextButton(
                                child: const Text("OK"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              );

                              // set up the AlertDialog
                              AlertDialog alert = AlertDialog(
                                title: const Text(
                                    "Passwords in both fields don't match"),
                                content: const Text(
                                    "Re-enter passwords and make sure they match"),
                                actions: [
                                  okButton,
                                ],
                              );

                              // show the dialog
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return alert;
                                },
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFEDCD),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Register',
                            style: TextStyle(
                                color: Colors.black87, fontFamily: bodyFont),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: const Text(
                            'Already have an account? Login',
                            style: TextStyle(fontFamily: bodyFont),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
