import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class ListFoodPage extends StatefulWidget {
  const ListFoodPage({super.key});

  @override
  State<ListFoodPage> createState() => _ListFoodPageState();
}

class _ListFoodPageState extends State<ListFoodPage> {
  int _hitung = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            ListView(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: fromCssColor('#4785EA'),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25, top: 20),
                                        child: IconButton(
                                          icon: Icon(
                                            Icons.arrow_back_ios_new_outlined,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 65, top: 30),
                                          child: Text(
                                            "LIST FOODS",
                                            style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20),
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    // height: 610,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 45),
                                        Container(
                                            child: Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10, right: 10),
                                              child: Image.asset(
                                                'assets/images/risol.png',
                                                height: 100,
                                                width: 100,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 10),
                                                  child: Text(
                                                    "Risol",
                                                    style: GoogleFonts.poppins(
                                                        color: fromCssColor(
                                                            '#585FA4'),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 20),
                                                    // style: TextStyle(
                                                    //     fontWeight:
                                                    //         FontWeight.w600,
                                                    //     fontSize: 23),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 3,
                                                    bottom: 15,
                                                  ),
                                                  child: Text(
                                                    "Rp3000/pcs",
                                                    style: GoogleFonts.poppins(
                                                        color: fromCssColor(
                                                            '#585FA4'),
                                                        fontSize: 15),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 40),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: IconButton(
                                                        icon: Icon(
                                                          Icons.remove,
                                                          color: Colors.white,
                                                        ),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                    Container(
                                                      child:
                                                          Transform.translate(
                                                        offset: Offset(-70, 0),
                                                        child: IconButton(
                                                          icon: Icon(
                                                              Icons.remove),
                                                          onPressed: () {
                                                            setState(() {
                                                              _hitung--;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child:
                                                          Transform.translate(
                                                        offset: Offset(-60, 0),
                                                        child: Text('$_hitung'),
                                                      ),
                                                    ),
                                                    Container(
                                                      child:
                                                          Transform.translate(
                                                        offset: Offset(-50, 0),
                                                        child: IconButton(
                                                          icon: Icon(Icons.add),
                                                          onPressed: () {
                                                            setState(() {
                                                              _hitung++;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                          ],
                                        )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
