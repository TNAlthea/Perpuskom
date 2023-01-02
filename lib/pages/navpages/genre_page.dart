import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'dart:async';
import '../BookList_page.dart';

class GenrePage extends StatefulWidget {
  const GenrePage({Key? key}) : super(key: key);
  @override
  GenrePageState createState() {
    return GenrePageState();
  }
}

class GenrePageState extends State<GenrePage> {
  static const giantsClubColor = Color(0xffB45452);
  List tileColor = [Colors.grey.shade400, Colors.white];
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: giantsClubColor,
      body: Container(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(color: giantsClubColor),
                  child: Container(
                    child: Text(
                      "Genre Buku",
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Public Sans'),
                      textAlign: TextAlign.center,
                    ),
                  )),
              Expanded(
                  child: Container(
                      color: giantsClubColor,
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                          child: Container(
                            color: Colors.white,
                            // padding: EdgeInsets.all(40),
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              children: [
                                Container(
                                  width: 500,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              margin: EdgeInsets.all(15),
                                              height: 150,
                                              width: 150,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.0)),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(1),
                                                      blurRadius: 10,
                                                    )
                                                  ]),
                                              child: InkWell(
                                                  child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Image.asset(
                                                      'assets/genre1.jpg'),
                                                  Text('Fiksi',
                                                      style: const TextStyle(
                                                        color:
                                                            Color(0xffB45452),
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily:
                                                            'Public Sans',
                                                      ))
                                                ],
                                              ),
                                              onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BookListPage()));
                                    })),
                                          Container(
                                              margin: EdgeInsets.all(15),
                                              height: 150,
                                              width: 150,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.0)),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(1),
                                                      blurRadius: 10,
                                                    )
                                                  ]),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Image.asset(
                                                      'assets/genre2.jpg'),
                                                  Text('Jurnal Bercetak',
                                                      style: const TextStyle(
                                                        color:
                                                            Color(0xffB45452),
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily:
                                                            'Public Sans',
                                                      ))
                                                ],
                                              )),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              margin: EdgeInsets.all(15),
                                              height: 150,
                                              width: 150,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.0)),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(1),
                                                      blurRadius: 10,
                                                    )
                                                  ]),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Image.asset(
                                                      'assets/genre3.jpg'),
                                                  Text('Teknologi',
                                                      style: const TextStyle(
                                                        color:
                                                            Color(0xffB45452),
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily:
                                                            'Public Sans',
                                                      ))
                                                ],
                                              )),
                                          Container(
                                              margin: EdgeInsets.all(15),
                                              height: 150,
                                              width: 150,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.0)),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(1),
                                                      blurRadius: 10,
                                                    )
                                                  ]),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Image.asset(
                                                      'assets/genre4.jpg'),
                                                  Text('Internasional',
                                                      style: const TextStyle(
                                                        color:
                                                            Color(0xffB45452),
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily:
                                                            'Public Sans',
                                                      ))
                                                ],
                                              )),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              margin: EdgeInsets.all(15),
                                              height: 150,
                                              width: 150,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.0)),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(1),
                                                      blurRadius: 10,
                                                    )
                                                  ]),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Image.asset(
                                                      'assets/genre5.jpg'),
                                                  Text('Ensiklopedia',
                                                      style: const TextStyle(
                                                        color:
                                                            Color(0xffB45452),
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily:
                                                            'Public Sans',
                                                      ))
                                                ],
                                              )),
                                          Container(
                                              margin: EdgeInsets.all(15),
                                              height: 150,
                                              width: 150,
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              10.0)),
                                                  boxShadow: <BoxShadow>[
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(1),
                                                      blurRadius: 10,
                                                    )
                                                  ]),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Image.asset(
                                                      'assets/genre6.jpg'),
                                                  Text('Skripsi',
                                                      style: const TextStyle(
                                                        color:
                                                            Color(0xffB45452),
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily:
                                                            'Public Sans',
                                                      ))
                                                ],
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ))))
            ]),
      ),
    );
  }
}
