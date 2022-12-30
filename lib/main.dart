import 'package:flutter/material.dart';
import 'package:tubes_grafik/grafik.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Container(
        // color: Color.fromRGBO(255, 255, 255, 100),
        width: 1080,
        height: 1920,
        child: ListView(
          children: <Widget>[
            // selamat datang jumbotron
            // singkatan
            // carousel
            // card buku

            // jumlah by genre
            Container(
              padding: const EdgeInsets.all(20.0),
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
              height: 1920,
              // color: Colors.black,
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  //per genre

                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 15, 2, 15),
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
                    padding: const EdgeInsets.fromLTRB(0, 15, 2, 15),
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
                    padding: const EdgeInsets.fromLTRB(0, 15, 2, 15),
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
                    padding: const EdgeInsets.fromLTRB(0, 15, 2, 15),
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
                    padding: const EdgeInsets.fromLTRB(0, 15, 2, 15),
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
                    padding: const EdgeInsets.fromLTRB(0, 15, 2, 15),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 91,
                          child: Text(
                            'Jurnal Bercetak',
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
