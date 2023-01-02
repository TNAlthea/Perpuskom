import 'package:flutter/material.dart';
import 'package:navbar_bottom/pages/otp.dart';

class KonfirmSandi extends StatefulWidget {
  const KonfirmSandi({super.key, required this.title});

  final String title;

  @override
  State<KonfirmSandi> createState() => _KonfirmSandiState();
}

class _KonfirmSandiState extends State<KonfirmSandi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 46, 46, 51),
        body: Container(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    padding: EdgeInsets.all(60),
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 46, 46, 51)),
                    child: Container(
                      child: Text(
                        "Buat Akun",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Public Sans'),
                        textAlign: TextAlign.center,
                      ),
                    )),
                Expanded(
                    child: Container(
                  // height: 460,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                      )),
                  child: ListView(
                    children: [
                      // hyperlink lupa pass
                      // email
                      Container(
                        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0, 0),
                        child: Column(
                          children: [
                            Container(
                              width: 350,
                              padding:
                                  const EdgeInsets.fromLTRB(10.0, 0.0, 0, 10.0),
                              child: Text(
                                'Kata Sandi',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 180, 84, 82),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 350,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.349),
                                    offset: Offset(0, 3),
                                    blurRadius: 3.5,
                                  )
                                ],
                              ),
                              child: Container(
                                padding:
                                    EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0),
                                child: TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      // kata sandi baru
                      Container(
                        padding: EdgeInsets.fromLTRB(0.0, 20.0, 0, 0),
                        child: Column(
                          children: [
                            Container(
                              width: 350,
                              padding:
                                  const EdgeInsets.fromLTRB(10.0, 0.0, 0, 10.0),
                              child: Text(
                                'Konfirmasi Kata Sandi',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 180, 84, 82),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Container(
                              height: 45,
                              width: 350,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(100),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.349),
                                    offset: Offset(0, 3),
                                    blurRadius: 3.5,
                                  )
                                ],
                              ),
                              child: Container(
                                padding:
                                    EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0),
                                child: TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      //
                      // button selanjutnya
                      Container(
                        width: 350,
                        padding:
                            const EdgeInsets.fromLTRB(29.0, 250.0, 29.0, 0.0),
                        child: OutlinedButton(
                          onPressed: () {
                            _navToOTP(context);
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 180, 84, 82),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          child: Text(
                            "Selanjutnya",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
              ]),
        ));
  }

// fungsi navigasi button
  void _navToOTP(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => OTPPage()));
  }
}
