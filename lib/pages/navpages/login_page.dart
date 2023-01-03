import 'package:flutter/material.dart';
import 'package:perpuskom/pages/navpages/otp.dart';
import 'package:perpuskom/pages/navpages/lupa_pass.dart';
import 'package:perpuskom/pages/navpages/profile_page.dart';
import 'package:perpuskom/pages/navpages/regis_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                        "Masuk",
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

                      // hyperlink lupa kata sandi
                      Container(
                          padding: EdgeInsets.fromLTRB(260.0, 15.0, 29.0, 0),
                          height: 30,
                          width: 45,
                          child: InkWell(
                            onTap: () {
                              _navToLupaPass(context);
                            },
                            child: Text(
                              'Lupa Kata Sandi?',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color.fromARGB(255, 180, 84, 82),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),

                      // hyperlink lupa kata sandi
                      Container(
                          padding: EdgeInsets.fromLTRB(115.0, 20.0, 115.0, 0),
                          // height: 30,
                          // width: 45,
                          child: Row(
                            children: [
                              Text(
                                'Belum punya akun?  ',
                                style: TextStyle(
                                    color: Color.fromARGB(190, 157, 178, 206),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              InkWell(
                                onTap: () {
                                  _navToRegis(context);
                                },
                                child: Text(
                                  'Daftar',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color.fromARGB(255, 180, 84, 82),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          )),

                      // button masuk
                      Container(
                        width: 350,
                        padding:
                            const EdgeInsets.fromLTRB(29.0, 120.0, 29.0, 0.0),
                        child: OutlinedButton(
                          onPressed: () {
                            _navToProfile(context);
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 180, 84, 82),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          child: Text(
                            "Masuk",
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

// fungsi navigasi button lupa password
  void _navToLupaPass(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LupaPassPage()));
  }

  // fungsi navigasi button OTP
  void _navToOTP(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => OTPPage()));
  }

  // fungsi navigasi button masuk
  void _navToProfile(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ProfilePage()));
  }

// fungsi hyperlink daftar
  void _navToRegis(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => RegisPage()));
  }
}
