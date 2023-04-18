import 'package:flutter/material.dart';
import 'package:recipebox/Resources/constants.dart';
import 'package:recipebox/Views/registration_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        ),
                        const SizedBox(height: 25),
                        ElevatedButton(
                          onPressed: () {},
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
                              MaterialPageRoute(builder: (context) => const RegistrationPage()),
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
