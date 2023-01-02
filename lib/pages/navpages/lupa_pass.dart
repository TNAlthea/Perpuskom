import 'package:flutter/material.dart';
import 'package:perpuskom/pages/navpages/otp.dart';

class LupaPassPage extends StatefulWidget {
  const LupaPassPage({super.key});

  @override
  State<LupaPassPage> createState() => _LupaPassPageState();
}

class _LupaPassPageState extends State<LupaPassPage> {
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
                    height: 220,
                    // padding: EdgeInsets.all(10),
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 46, 46, 51)),
                    child: Container(child: Image.asset('assets/lock.png'))),
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
                      Container(
                        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0, 10.0),
                        child: Column(
                          children: [
                            Container(
                              width: 350,
                              child: Text(
                                'Lupa Kata Sandi?',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 46, 46, 51),
                                    fontSize: 23,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              width: 350,
                              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0, 0),
                              child: Text(
                                'Atur ulang Kata Sandi',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color.fromARGB(255, 180, 84, 82),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

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
                                'Email',
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
                                'Kata Sandi Baru',
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

                      // konfirm
                      Container(
                        padding: EdgeInsets.fromLTRB(0.0, 20.0, 0, 0),
                        child: Column(
                          children: [
                            Container(
                              width: 350,
                              padding:
                                  const EdgeInsets.fromLTRB(10.0, 0.0, 0, 10.0),
                              child: Text(
                                'Ketik Ulang Kata Sandi Baru',
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

                      Container(
                        padding:
                            const EdgeInsets.fromLTRB(29.0, 10.0, 29.0, 0.0),
                        child: Text(
                          'Gunakan kata sandi kuat yang belum pernah dipakai sebelumnya',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Color.fromARGB(255, 157, 178, 206),
                              fontSize: 13),
                        ),
                      ),

                      // button selanjutnya
                      Container(
                        width: 350,
                        padding:
                            const EdgeInsets.fromLTRB(29.0, 0.0, 29.0, 0.0),
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
