import 'package:flutter/material.dart';
import 'package:recipebox/Resources/constants.dart';
import 'package:recipebox/Views/login_page.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

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
                const Text('Sign Up', style: subHeadingStyle,),
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
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Color(0xFFFFEDCD)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Color(0xFFFFEDCD)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Color(0xFFFFEDCD)),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFFEDCD),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'Register',
                            style: TextStyle(color: Colors.black87, fontFamily: bodyFont),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginPage()),
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
