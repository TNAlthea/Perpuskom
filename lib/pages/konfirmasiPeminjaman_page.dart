import 'package:flutter/material.dart';
import 'package:perpuskom/pages/BookDetail_page.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'BookList_page.dart';
import 'dart:io';
import 'dart:async';

class KonfirmasiPeminjamanPage extends StatefulWidget {
  final listBuku daftarBuku;

  @override
  const KonfirmasiPeminjamanPage({Key? key, required this.daftarBuku})
      : super(key: key);
  _KonfirmasiPeminjamanPageState createState() =>
      _KonfirmasiPeminjamanPageState();
}

class _KonfirmasiPeminjamanPageState extends State<KonfirmasiPeminjamanPage>
    with SingleTickerProviderStateMixin {
  static const giantsClubColor = Color(0xffB45452);
  static const darkCharcoalColor = Color(0xff2E2E33);
  static const wildBlueYonderColor = Color(0xff9DB2CE);

  int? selectedId;
  String selectedName = "";
  int selectedStatusPinjam = 0;
  String selectedWaktuDipinjam = "";
  String selectedWaktuDikembalikan = "";
  int selectedTahunTerbit = 0;
  String selectedSinopsis = "";
  int selectedJumlahPeminjam = 0;
  int selectedStok = 0;
  String selectedAuthor = "";

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
      backgroundColor: darkCharcoalColor,
      body: Container(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 100),
                  decoration: BoxDecoration(color: darkCharcoalColor),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/checked.png'),
                        padding: EdgeInsets.only(bottom: 20),
                      ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Anda telah berhasil meminjam buku di ',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Public Sans',
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                            /*defining default style is optional */
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Perpus',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16)),
                              TextSpan(
                                  text: 'Kom',
                                  style: TextStyle(
                                      color: giantsClubColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16)),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: darkCharcoalColor,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    child: Container(
                        padding: EdgeInsets.all(30),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Review',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                  color: Colors.white,
                                  alignment: Alignment.bottomLeft,
                                  padding: EdgeInsets.only(top: 10),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.book,
                                                  color: wildBlueYonderColor,
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                    'Judul buku                   : ',
                                                    style: TextStyle(
                                                        color:
                                                            wildBlueYonderColor)),
                                                Spacer(),
                                                Text(widget.daftarBuku.name,
                                                    style: TextStyle(
                                                        color: Colors.black))
                                              ],
                                            )),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                    'assets/mdi_book-clock-outline.png'),
                                                SizedBox(width: 5),
                                                Text('Waktu pengembalian : ',
                                                    style: TextStyle(
                                                        color:
                                                            wildBlueYonderColor)),
                                                Spacer(),
                                                Text(
                                                    widget.daftarBuku
                                                        .waktuDikembalikan,
                                                    style: TextStyle(
                                                        color: Colors.black))
                                              ],
                                            )),
                                        Container(
                                            padding: EdgeInsets.only(top: 20),
                                            color: Colors.white,
                                            child: InkWell(
                                              child: Card(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                30)),
                                                    side: BorderSide(
                                                        width: 2,
                                                        color:
                                                            giantsClubColor)),
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 45,
                                                      vertical: 15),
                                                  color: Colors.white,
                                                  child: Text(
                                                    'Kembali',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: giantsClubColor,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                              onTap: () async {
                                                selectedId =
                                                    widget.daftarBuku.id;
                                                selectedName =
                                                    widget.daftarBuku.name;
                                                selectedWaktuDipinjam = widget
                                                    .daftarBuku.waktuDipinjam;
                                                selectedWaktuDikembalikan =
                                                    widget.daftarBuku
                                                        .waktuDikembalikan;
                                                selectedTahunTerbit = widget
                                                    .daftarBuku.tahunTerbit;
                                                selectedSinopsis =
                                                    widget.daftarBuku.sinopsis;
                                                selectedJumlahPeminjam = widget
                                                    .daftarBuku.jumlahPeminjam;
                                                selectedStok =
                                                    widget.daftarBuku.stok;
                                                selectedAuthor =
                                                    widget.daftarBuku.author;

                                                widget.daftarBuku
                                                            .statusPinjam ==
                                                        1
                                                    ? selectedStatusPinjam = 0
                                                    : selectedStatusPinjam = 1;
                                                await DatabaseHelper.instance
                                                    .update(listBuku(
                                                        id: selectedId,
                                                        name: selectedName,
                                                        statusPinjam:
                                                            selectedStatusPinjam,
                                                        waktuDipinjam:
                                                            selectedWaktuDipinjam,
                                                        waktuDikembalikan:
                                                            selectedWaktuDikembalikan,
                                                        tahunTerbit:
                                                            selectedTahunTerbit,
                                                        sinopsis:
                                                            selectedSinopsis,
                                                        jumlahPeminjam:
                                                            selectedJumlahPeminjam,
                                                        stok: selectedStok,
                                                        author:
                                                            selectedAuthor));
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            BookDetailPage(
                                                              daftarBuku: widget
                                                                  .daftarBuku,
                                                            ))).then((value) =>
                                                    setState((() {})));
                                              },
                                            )),
                                      ])),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
