import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ListView(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/latar.png'),
                            fit: BoxFit.cover,
                            opacity: 0.9,
                          ),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 4,
                              blurRadius: 3,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 25),
                                  child: Text(
                                    "Hi, User!",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, right: 25),
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                              Icons.notifications_rounded,
                                              color: Colors.white)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.menu,
                                              color: Colors.white))
                                    ],
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25, top: 10),
                                      child: Text(
                                        // "Hello, $name",
                                        "Your Balance",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 25, top: 4),
                                      child: Text(
                                        "Rp56.000",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 25),
                      child: Container(
                        transform: Matrix4.translationValues(0.0, -15.0, 0.0),
                        height: 85,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: ImageIcon(
                                        AssetImage('images/topup.png')),
                                  ),
                                  Text(
                                    "Top Up",
                                    style: GoogleFonts.poppins(
                                        color: fromCssColor('#335D98'),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: ImageIcon(
                                        AssetImage('images/history.png')),
                                  ),
                                  Text(
                                    "History",
                                    style: GoogleFonts.poppins(
                                        color: fromCssColor('#335D98'),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: ImageIcon(
                                        AssetImage('images/account.png')),
                                  ),
                                  Text(
                                    "Account",
                                    style: GoogleFonts.poppins(
                                        color: fromCssColor('#335D98'),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 450,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                            color: Colors.grey,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 25),
                                  child: Text(
                                    "Recent Transaction",
                                    style: GoogleFonts.poppins(
                                        color: fromCssColor('#335D98'),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, right: 35),
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "See All",
                                        style: GoogleFonts.poppins(
                                            color:
                                                Color.fromRGBO(51, 93, 152, 52),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      ))),
                            ],
                          ),
                          Divider(
                            thickness: 1,
                            color: Color.fromRGBO(215, 214, 214, 0.965),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, top: 15),
                                  child: Text(
                                    "Today",
                                    style: GoogleFonts.poppins(
                                        color: Color.fromRGBO(51, 93, 152, 52),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  )),
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 5, top: 5),
                              child: ListTile(
                                leading: Icon(Icons.rectangle,
                                    color: Color.fromRGBO(255, 211, 54, 100),
                                    size: 55),
                                title: Text(
                                  'Kantin',
                                  style: GoogleFonts.poppins(
                                      color: fromCssColor('#335D98'),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                ),
                                subtitle: Text(
                                  'Risol + Roti Bakar',
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(51, 93, 152, 52),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                trailing: Text(
                                  '-Rp6.000',
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(51, 93, 152, 52),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(left: 5, top: 5),
                              child: ListTile(
                                leading: Icon(Icons.rectangle,
                                    color: Color.fromRGBO(255, 211, 54, 100),
                                    size: 55),
                                title: Text(
                                  'Kantin',
                                  style: GoogleFonts.poppins(
                                      color: fromCssColor('#335D98'),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                ),
                                subtitle: Text(
                                  'Risol + Roti Bakar',
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(51, 93, 152, 52),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                trailing: Text(
                                  '-Rp6.000',
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(51, 93, 152, 52),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, top: 15),
                                  child: Text(
                                    "Yesterday",
                                    style: GoogleFonts.poppins(
                                        color: Color.fromRGBO(51, 93, 152, 52),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  )),
                            ],
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 5, top: 5),
                              child: ListTile(
                                leading: Icon(Icons.rectangle,
                                    color: Color.fromRGBO(94, 119, 255, 100),
                                    size: 55),
                                title: Text(
                                  'Top Up',
                                  style: GoogleFonts.poppins(
                                      color: fromCssColor('#335D98'),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                ),
                                subtitle: Text(
                                  'Scan qr',
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(51, 93, 152, 52),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                trailing: Text(
                                  '+Rp10.000',
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(51, 93, 152, 52),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(left: 5, top: 5),
                              child: ListTile(
                                leading: Icon(Icons.rectangle,
                                    color: Color.fromRGBO(255, 211, 54, 100),
                                    size: 55),
                                title: Text(
                                  'Kantin',
                                  style: GoogleFonts.poppins(
                                      color: fromCssColor('#335D98'),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                ),
                                subtitle: Text(
                                  'Risol + Roti Bakar',
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(51, 93, 152, 52),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                                trailing: Text(
                                  '-Rp6.000',
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(51, 93, 152, 52),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        )
      ],
    ));
  }
}
