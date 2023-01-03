import 'package:flutter/material.dart';
import '../../main.dart';
import 'home_page.dart';
import 'main_page.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 180, 84, 82),
        body: Container(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  // width: 400,
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
                  child: Text(
                    'Tentang',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                // selamat datang jumbotron
                Stack(alignment: Alignment.center, children: <Widget>[
                  Container(
                    child: Image.asset(
                      'assets/about.png',
                      height: 185,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  )
                ]),

                // singkatan
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    height: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0, 30.0, 10.0),
                          child: Text(
                              'PerpusKom ( Perpustakaan Digital Ilmu Komputer) merupakan aplikasi yang dibuat untuk mahasiswa khususnya di Departmen Ilmu Komputer. Mahasiswa dapat mengakses berbagai macam fitur yang ditawarkan. Tujuan pengembangan aplikasi ini adalah agar memudahkan mahasiswa untuk mencari buku dimanapun dan kapanpun.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 15,
                                  height: 1.5,
                                  fontFamily: 'Public Sans',
                                  fontWeight: FontWeight.w400
                                  // wordSpacing:
                                  )),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 40.0),
                          child: Text(
                              'Alamat : Jl. Cemara Indah No. 22, Bandung, Jawa Barat Telepon : (0262) 897 654',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(106, 0, 0, 0),
                                  fontSize: 12,
                                  height: 1.5,
                                  fontFamily: 'Public Sans',
                                  fontWeight: FontWeight.w400
                                  // wordSpacing:
                                  )),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            _navToHome(context);
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            side: BorderSide(
                                color: Color.fromARGB(255, 180, 84, 82),
                                width: 1),
                          ),
                          child: Text(
                            "Kembali",
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Color.fromARGB(255, 180, 84, 82),
                                fontWeight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ]),
        ));
  }

  // fungsi navigasi button
  void _navToHome(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MainPage()));
  }
}
