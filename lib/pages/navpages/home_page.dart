import 'package:flutter/material.dart';
import 'package:navbar_bottom/pages/navpages/grafik.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Color.fromRGBO(255, 255, 255, 100),
        width: 1080,
        height: 1920,
        child: ListView(
          children: <Widget>[
            // selamat datang jumbotron
            Container(
              height: 0.5,
            ),
            Stack(alignment: Alignment.center, children: <Widget>[
              Container(
                // padding: const EdgeInsets.all(0.0),
                child: Image.asset(
                  'assets/jumbotron.png',
                  height: 185,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                child: Text(
                  "Selamat Datang",
                  style: TextStyle(
                      color: Color.fromARGB(255, 220, 222, 223),
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      height: -0.01),
                ),
              )
            ]),

            // singkatan
            Container(
              color: Color.fromARGB(255, 46, 46, 51),
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 10.0),
                    child: Text(
                        'PerpusKom (Perpustakaan Digital Ilmu Komputer) merupakan aplikasi yang dibuat untuk mahasiswa khususnya di Departmen Ilmu Komputer. Mahasiswa  dapat mengakses berbagai macam fitur yang ditawarkan.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 13)),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      side: BorderSide(color: Colors.red, width: 1),
                    ),
                    child: Text(
                      "Selengkapnya",
                      style: TextStyle(fontSize: 10.0, color: Colors.red),
                    ),
                  )
                ],
              ),
            ),

            // carousel

            // card buku
            Container(
              color: Color.fromARGB(255, 12, 12, 235),
              height: 170,
              child: Column(
                children: [
                  // judul
                  Container(
                    padding: const EdgeInsets.fromLTRB(30.0, 15.0, 0, 10.0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Buku Terbaru",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),

                  // list buku
                  Row(
                    // semua buku
                    children: [
                      //1 buku
                      Container(
                        padding: const EdgeInsets.fromLTRB(7.5, 0, 0, 0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/cover.png',
                            ),
                            Text(
                              'Data Science for Business',
                              style: TextStyle(height: 2, fontSize: 8),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(7.5, 0, 0, 0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/cover.png',
                            ),
                            Text(
                              'Data Science for Business',
                              style: TextStyle(height: 2, fontSize: 8),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(7.5, 0, 0, 0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/cover.png',
                            ),
                            Text(
                              'Data Science for Business',
                              style: TextStyle(height: 2, fontSize: 8),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(7.5, 0, 0, 0),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/cover.png',
                            ),
                            Text(
                              'Data Science for Business',
                              style: TextStyle(height: 2, fontSize: 8),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // jumlah by genre
            Container(
              padding: const EdgeInsets.fromLTRB(30.0, 20.0, 0, 5.0),
              child: Text(
                'Jumlah Buku',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            // container utk grafik
            Container(
              width: 1080,
              height: 920,
              // color: Colors.black,
              padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
              child: Column(
                children: [
                  //per genre

                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 15, 2, 10),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 91,
                          child: Text(
                            'Teknologi',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        CustomPaint(
                          painter: Grafik(qtyBuku: 512),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                            child: Text(
                              '512',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 15, 2, 10),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 91,
                          child: Text(
                            'Sejarah',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        CustomPaint(
                          painter: Grafik(qtyBuku: 380),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                            child: Text(
                              '380',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 15, 2, 10),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 91,
                          child: Text(
                            'Sains',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        CustomPaint(
                          painter: Grafik(qtyBuku: 240),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                            child: Text(
                              '240',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 15, 2, 10),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 91,
                          child: Text(
                            'Internasional',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        CustomPaint(
                          painter: Grafik(qtyBuku: 380),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                            child: Text(
                              '380',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 15, 2, 3),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 91,
                          child: Text(
                            'Skripsi',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        CustomPaint(
                          painter: Grafik(qtyBuku: 512),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                            child: Text(
                              '512',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 15, 2, 10),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 91,
                          child: Text(
                            'Jurnal Bercetak',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        CustomPaint(
                          painter: Grafik(qtyBuku: 380),
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                            child: Text(
                              '380',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

// batas
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
