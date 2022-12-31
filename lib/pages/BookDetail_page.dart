import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'BookList_page.dart';
import 'dart:io';
import 'dart:async';

class BookDetailPage extends StatefulWidget {
  final listBuku daftarBuku;

  @override
  const BookDetailPage({Key? key, required this.daftarBuku}) : super(key: key);
  _BookDetailPageState createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage>
    with SingleTickerProviderStateMixin {
  static const giantsClubColor = Color(0xffB45452);

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(color: giantsClubColor),
                  child: Container(
                    child: Image.network(
                      'https://picsum.photos/250?image=9',
                      width: 200,
                      height: 370,
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
                        padding: EdgeInsets.only(top: 70, left: 30, right: 30),
                        color: Colors.white,
                        child: Column(
                          children: [
                            TabBar(
                              controller: _tabController,
                              // give the indicator a decoration (color and border radius)
                              indicator: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.black)),
                              ),
                              labelColor: Colors.black,
                              tabs: [
                                // first tab [you can add an icon using the icon property]
                                Tab(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Rincian'),
                                  ),
                                ),

                                // second tab [you can add an icon using the icon property]
                                Tab(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('Sinopsis'),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _tabController,
                                children: [
                                  // first tab bar view widget
                                  Container(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Row(
                                                children: [
                                                  Text('Tahun Terbit:'),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(widget
                                                        .daftarBuku.tahunTerbit
                                                        .toString()),
                                                  )
                                                ],
                                              )),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Row(
                                                children: [
                                                  Text('Stok:'),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(widget
                                                        .daftarBuku.stok
                                                        .toString()),
                                                  )
                                                ],
                                              )),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10),
                                              child: Row(
                                                children: [
                                                  Text('Peminjam:'),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(widget
                                                        .daftarBuku
                                                        .jumlahPeminjam
                                                        .toString()),
                                                  )
                                                ],
                                              )),
                                          if (widget.daftarBuku.statusPinjam ==
                                              0)
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 25,
                                                            vertical: 5),
                                                    color:
                                                        Colors.green.shade500,
                                                    child: Text(
                                                      'Tersedia',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ))
                                          else
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 25,
                                                            vertical: 5),
                                                    color:
                                                        giantsClubColor,
                                                    child: Text(
                                                      'Sedang dipinjam',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ))
                                        ],
                                      )),
                                  // second tab bar view widget
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Text(
                                      widget.daftarBuku.sinopsis,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    color: giantsClubColor,
                    child: Text(
                      'Pinjam',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
