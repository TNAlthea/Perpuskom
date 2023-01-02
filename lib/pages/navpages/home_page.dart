import 'package:flutter/material.dart';
import 'grafik.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'assets/carousel/1.png',
  'assets/carousel/2.png',
  'assets/carousel/3.jfif'
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

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
            Container(
              height: 270,
              padding: EdgeInsets.fromLTRB(0, 14.0, 0, 0),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'Kunjungi Perpustakaan Kami',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                  CarouselSlider(
                    carouselController: _controller,
                    options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }
                        // enlargeCenterPage: true,
                        ),
                    items: imgList
                        .map((item) => Container(
                              // color: Colors.red,
                              child: Container(
                                height: 10,
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 0),
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.0)),
                                    child: Stack(
                                      children: <Widget>[
                                        Image.asset(item,
                                            fit: BoxFit.cover, width: 700.0),
                                      ],
                                    )),
                              ),
                            ))
                        .toList(),
                  ),
                  // indikator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: EdgeInsets.symmetric(
                              // vertical: 8.0,
                              horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),

            // card buku
            Container(
              color: Color.fromARGB(255, 46, 46, 51),
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
                              style: TextStyle(
                                  height: 2, fontSize: 8, color: Colors.white),
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
                              style: TextStyle(
                                  height: 2, fontSize: 8, color: Colors.white),
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
                              style: TextStyle(
                                  height: 2, fontSize: 8, color: Colors.white),
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
                              style: TextStyle(
                                  height: 2, fontSize: 8, color: Colors.white),
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
              height: 280,
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
