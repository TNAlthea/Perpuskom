import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import '../BookList_page.dart';
import 'dart:io';
import 'dart:async';

class MemberPage extends StatefulWidget {
  const MemberPage({Key? key}) : super(key: key);
  @override
  MemberPageState createState() {
    return MemberPageState();
  }
}

class MemberPageState extends State<MemberPage> {
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
                      "Peminjaman",
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
                        child: FutureBuilder<List<listBuku>>(
                            future: DatabaseHelper.instance.getListBuku(),
                            builder: (context,
                                AsyncSnapshot<List<listBuku>> snapshot) {
                              if (!snapshot.hasData) {
                                return Center(child: Text('Loading...'));
                              }
                              return snapshot.data!.isEmpty
                                  ? Center(
                                      child: Text('No data yet!'),
                                    )
                                  : Container(
                                      color: Colors.white,
                                      padding: EdgeInsets.all(10),
                                      child: ListView(
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        children:
                                            snapshot.data!.map((daftarBuku) {
                                          return Container(
                                              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    flex: 8,
                                                    child: Image.network(
                                                      'https://picsum.photos/250?image=9',
                                                      width: 100,
                                                      height: 170,
                                                    ),
                                                  ),
                                                  Spacer(
                                                    flex: 1,
                                                  ),
                                                  Expanded(
                                                      flex: 11,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons.book,
                                                                color:
                                                                    giantsClubColor,
                                                              ),
                                                              Container(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                  daftarBuku
                                                                      .name,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500))
                                                            ],
                                                          ),
                                                          SizedBox(height: 15),
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons.book,
                                                                color:
                                                                    giantsClubColor,
                                                              ),
                                                              Container(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                  daftarBuku
                                                                      .waktuDipinjam,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color:
                                                                          giantsClubColor))
                                                            ],
                                                          ),
                                                          SizedBox(height: 15),
                                                          Row(
                                                            children: [
                                                              Icon(
                                                                Icons.book,
                                                                color:
                                                                    giantsClubColor,
                                                              ),
                                                              Container(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                  daftarBuku
                                                                      .waktuDikembalikan,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color:
                                                                          giantsClubColor))
                                                            ],
                                                          ),
                                                          SizedBox(height: 15),
                                                          if (daftarBuku
                                                                  .statusPinjam ==
                                                              0)
                                                            Container(
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.circular(
                                                                            20)),
                                                                    color: Colors
                                                                        .green
                                                                        .shade500),
                                                                child:
                                                                    Container(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          20,
                                                                      vertical:
                                                                          10),
                                                                  child: Text(
                                                                    "Dikembalikan",
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            'Public Sans',
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ))
                                                          else
                                                            Container(
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.circular(
                                                                            20)),
                                                                    color: giantsClubColor),
                                                                child:
                                                                    Container(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          15,
                                                                      vertical:
                                                                          10),
                                                                  child: Text(
                                                                    "Sedang dipinjam",
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            'Public Sans',
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ))
                                                        ],
                                                      )),
                                                ],
                                              ));
                                        }).toList(),
                                      ));
                            }),
                      )))
            ]),
      ),
    );
  }
}