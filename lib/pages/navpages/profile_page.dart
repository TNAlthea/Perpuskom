import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 180, 84, 82),
      body: Container(
        width: 1080,
        height: 1920,
        child: ListView(
          children: [
            // "Profil"
            Container(
              width: 400,
              padding: EdgeInsets.all(70.0),
              child: Text(
                'Profil',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // card profil
            Container(
              height: 446,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(20.0),
                  )),
              child: ListView(
                children: [
                  // foto & nama
                  Container(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 0, 0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/profil.png',
                        ),
                        // kolom & nama
                        Container(
                          padding: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                          child: Column(
                            children: [
                              Container(
                                width: 230,
                                padding: const EdgeInsets.fromLTRB(
                                    10.0, 0.0, 0, 10.0),
                                child: Text(
                                  'Nama',
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
                                  width: 250,
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
                                    padding: const EdgeInsets.fromLTRB(
                                        30.0, 11.0, 0, 0.0),
                                    child: Text(
                                      'John Doe',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 157, 178, 206),
                                          fontSize: 17),
                                    ),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  // email
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 15.0, 0, 0),
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
                                  const EdgeInsets.fromLTRB(30.0, 11.0, 0, 0.0),
                              child: Text(
                                'johndoe@bansosku.co.id',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 157, 178, 206),
                                    fontSize: 17),
                              ),
                            ))
                      ],
                    ),
                  ),

                  // no telp
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 20.0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 0.0, 0, 10.0),
                          child: Text(
                            'Nomor Telepon',
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
                                  const EdgeInsets.fromLTRB(30.0, 11.0, 0, 0.0),
                              child: Text(
                                '0812345657',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 157, 178, 206),
                                    fontSize: 17),
                              ),
                            ))
                      ],
                    ),
                  ),

                  // alamat
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 20.0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 0.0, 0, 10.0),
                          child: Text(
                            'Alamat',
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
                                  const EdgeInsets.fromLTRB(30.0, 11.0, 0, 0.0),
                              child: Text(
                                'Jl. Setiabudi No. 2',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 157, 178, 206),
                                    fontSize: 17),
                              ),
                            ))
                      ],
                    ),
                  ),

                  // usia
                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 20.0, 0, 0),
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 0.0, 0, 10.0),
                          child: Text(
                            'Usia',
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
                                  const EdgeInsets.fromLTRB(30.0, 11.0, 0, 0.0),
                              child: Text(
                                '20',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 157, 178, 206),
                                    fontSize: 17),
                              ),
                            ))
                      ],
                    ),
                  ),

                  // pekerjaan
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width: 350,
                          padding:
                              const EdgeInsets.fromLTRB(10.0, 20.0, 0, 10.0),
                          child: Text(
                            'Pekerjaan',
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
                                  const EdgeInsets.fromLTRB(30.0, 11.0, 0, 0.0),
                              child: Text(
                                'Wiraswasta',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 157, 178, 206),
                                    fontSize: 17),
                              ),
                            ))
                      ],
                    ),
                  ),

                  // button keluar
                  Container(
                    padding: EdgeInsets.fromLTRB(102.0, 20.0, 102.0, 50.0),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        side: BorderSide(
                            color: Color.fromARGB(255, 180, 84, 82), width: 1),
                      ),
                      child: Text(
                        "Keluar",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 180, 84, 82)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
