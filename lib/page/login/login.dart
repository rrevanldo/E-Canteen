// import 'dart:convert';

// import 'package:ecanteen/page/dashboard/home.dart';
import 'package:ecanteen/page/dashboard/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final bool _obscureText = true;

  // Future login(String email, String password) async {
  //   if (_formKey.currentState!.validate()) {}
  //   try {
  //     http.Response response = await http.post(
  //       Uri.parse('http://3.27.72.203:3000/auth/login'),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //       body: jsonEncode(<String, String>{
  //         'email': _emailController.text.trim(),
  //         'password': _passwordController.text.trim(),
  //       }),
  //     );

  //     if (response.statusCode == 200) {
  //       var data = jsonDecode(response.body);
  //       print("Ini value dari $data");

  //       print("response akses token ${data['accessToken']}");
  //       // print("response ${response.body['user']}");
  //       await LocalStorage().setBearerToken(data['accessToken']);

  //       print("Ini respon user ${data['user']}");
  //       // print("response ${response.body['user']}");
  //       await LocalStorage().setDataUser(data['user']);

  //       Navigator.pushAndRemoveUntil(
  //           context,
  //           MaterialPageRoute(
  //             builder: (BuildContext context) => const MyHomePage(),
  //           ),
  //           (route) => false);

  //       print('Success login');
  //     } else {
  //       print('failed login');
  //       showDialog(
  //         context: context,
  //         builder: (_) => AlertDialog(
  //           title: Text('Failed Login!'),
  //           content: Text('Make sure you have an internet network'),
  //           actions: [
  //             ElevatedButton(
  //               child: Text('Back'),
  //               onPressed: () => Navigator.pop(context),
  //             ),
  //           ],
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     print("ini error dari $e");
  //     showDialog(
  //       context: context,
  //       builder: (_) => AlertDialog(
  //         title: Text('Failed Login!'),
  //         content: Text('Make sure you have an internet network'),
  //         actions: [
  //           ElevatedButton(
  //             child: Text('Back'),
  //             onPressed: () => Navigator.pop(context),
  //           ),
  //         ],
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Form(
          key: _formKey,
          child: Column(children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 50),
                      child:
                          Image.asset('images/logo.png', height: 65, width: 65),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 10),
                      child: Text(
                        "Sign in to \nE-Canteen",
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: fromCssColor('#2E63AE'),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 26, bottom: 50),
                        child: Image.asset(
                          'images/garis.png',
                        )),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(228, 228, 228, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      controller: _usernameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        hintText: "Insert Username...",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey.withOpacity(0.7),
                        ),
                        border: InputBorder.none,
                        icon: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.phone_android_rounded,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(228, 228, 228, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextFormField(
                      obscureText: _obscureText,
                      keyboardType: TextInputType.visiblePassword,
                      controller: _passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        hintText: "Insert Password...",
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey.withOpacity(0.7),
                        ),
                        border: InputBorder.none,
                        icon: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.lock_outline_rounded,
                              color: Colors.grey,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password ?",
                        style: GoogleFonts.poppins(
                          letterSpacing: 2,
                          color: fromCssColor('#585FA4'),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            // Container(
            //   margin: EdgeInsets.symmetric(horizontal: 20),
            //   width: 225,
            //   height: 35,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20),
            //       color: Color.fromRGBO(65, 92, 233, 1)),
            //   child: Center(
            //     child: TextButton(
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (_) => const MyHomePage(),
            //           ),
            //         );
            //       },
            //       child: Text(
            //         "Login",
            //         style: GoogleFonts.poppins(
            //             fontSize: 20,
            //             fontWeight: FontWeight.w300,
            //             color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(65, 92, 233, 1)),
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const MyHomePage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, left: 75, right: 75),
                        child: Text('Login',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ]),
        )));
  }
}
