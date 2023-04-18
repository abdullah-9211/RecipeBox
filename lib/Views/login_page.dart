import 'package:flutter/material.dart';
import 'package:recipebox/Repositories/userFactory.dart';
import 'package:recipebox/Resources/constants.dart';
import 'package:recipebox/Views/main_page.dart';
import 'package:recipebox/Views/registration_page.dart';

userBank UserBank = userBank();

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  late String email = "";
  late String pass = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFFEDCD),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40),
                  child: const Image(
                    image: AssetImage('images/final2.png'),
                    height: 200,
                    width: 200,
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
                  'Log in',
                  style: subHeadingStyle,
                ),
                Expanded(
                  child: Container(
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
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: TextField(
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
                        ),
                        const SizedBox(height: 25),
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
                        const SizedBox(height: 25),
                        ElevatedButton(
                          onPressed: () {
                            if (UserBank.findUser(email, pass)) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MainPage(),
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
                                title: const Text("User not found"),
                                content: const Text(
                                    "Re-enter details or register if no account."),
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
                            'Login',
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
                                  builder: (context) =>
                                      const RegistrationPage()),
                            );
                          },
                          child: const Text(
                            "Don't have an account? Sign Up",
                            style: TextStyle(fontFamily: bodyFont),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
